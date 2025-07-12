using PrishuSoftTask.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PrishuSoftTask.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            return View();
        }





        [HttpGet]
        public ActionResult GetAllEmployeeList()
        {
            BALEmployee bal = new BALEmployee();
            Employee obj = new Employee();

            obj.EmployeeList = new List<Employee>();
            var ds = bal.GetAllEmployee();

            List<Employee> lstData = new List<Employee>();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Employee obju = new Employee();
                obju.Id = Convert.ToInt32(ds.Tables[0].Rows[i]["Id"]);
                obju.FirstName = ds.Tables[0].Rows[i]["FirstName"].ToString();
                obju.LastName = ds.Tables[0].Rows[i]["LastName"].ToString();
                obju.EmailAddress = ds.Tables[0].Rows[i]["EmailAddress"].ToString();
                obju.PhoneNumber = Convert.ToInt64(ds.Tables[0].Rows[i]["PhoneNumber"]);
                obju.Designation = ds.Tables[0].Rows[i]["Designation"].ToString();
                obju.Grade = ds.Tables[0].Rows[i]["Grade"].ToString();

                lstData.Add(obju);

            }
            obj.EmployeeList = lstData;


            return View(obj);
        }
        [HttpGet]
        public ActionResult AddEmployee()
        {
            BALEmployee objAdmin = new BALEmployee();
            DataSet ds = objAdmin.GetDesignation();
            List<SelectListItem> designationList = new List<SelectListItem>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                designationList.Add(new SelectListItem
                {
                    Text = dr["DesignationName"].ToString(),
                    Value = dr["Id"].ToString()
                });
            }

            ViewBag.Designations = designationList;
            ViewBag.GradeList = new List<SelectListItem>(); // initially empty

            return View();
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddEmployee(Employee Obj)
        {
            if (ModelState.IsValid)
            {
                BALEmployee bal = new BALEmployee();
                bal.SaveEmployee(Obj);
                return RedirectToAction("GetAllEmployeeList", "Employee");
            }

            // Repopulate dropdowns on validation failure
            DataSet ds = new BALEmployee().GetDesignation();
            List<SelectListItem> designationList = new List<SelectListItem>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                designationList.Add(new SelectListItem
                {
                    Text = dr["DesignationName"].ToString(),
                    Value = dr["Id"].ToString()
                });
            }

            ViewBag.Designations = designationList;
            ViewBag.GradeList = new List<SelectListItem>();

            return View(Obj);
        }


        public JsonResult GetGrades(int designationId)
        {
            List<SelectListItem> gradeList = new List<SelectListItem>();
            BALEmployee bal = new BALEmployee();
            var ds = bal.GetGrade(designationId);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                gradeList.Add(new SelectListItem
                {
                    Value = dr["Id"].ToString(),
                    Text = dr["GradeName"].ToString()
                });
            }

            return Json(gradeList, JsonRequestBehavior.AllowGet);
        }



        public ActionResult DeleteEmployee(Employee Obj)
        {
            BALEmployee bal = new BALEmployee();
            bal.DeleteEmployee(Obj);
            return RedirectToAction("GetAllEmployeeList", "Employee");

            return View();
        }



        [HttpGet]
        public ActionResult UpdateEmployee(int id)
        {
            BALEmployee bal = new BALEmployee();
            SqlDataReader dr = bal.getDetailsOfEmployeeByID(id);

            Employee obj = new Employee();
            if (dr.Read())
            {
               obj.FirstName  = dr["FirstName"].ToString();
               obj.LastName = dr["LastName"].ToString();
                obj.EmailAddress = dr["EmailAddress"].ToString();
                obj.PhoneNumber = Convert.ToInt64(dr["PhoneNumber"]);

            }
                return View(obj);
        }

        [HttpPost]
        public ActionResult UpdateEmployee(Employee Employee)
        {
            BALEmployee bal = new BALEmployee();
            bal.UpdateEmployee(Employee);
            return RedirectToAction("GetAllEmployeeList", "Employee");

            return View();

        }



    }
}