using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace PrishuSoftTask.Models
{
    public class BALEmployee
    {

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-534SU1S\\SQLEXPRESS;Initial Catalog=MVCTest;Integrated Security=True;");



        public DataSet GetAllEmployee()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetAllEmployee");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }

        public void SaveEmployee(Employee emp)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "AddEmployee");
            cmd.Parameters.AddWithValue("@FirstName", emp.FirstName);
            cmd.Parameters.AddWithValue("@LastName", emp.LastName);
            cmd.Parameters.AddWithValue("@Email", emp.EmailAddress);
            cmd.Parameters.AddWithValue("@Phone", emp.PhoneNumber);
            cmd.Parameters.AddWithValue("@DesigId", emp.DesignationId);
            cmd.Parameters.AddWithValue("@GradeId", emp.GradeId);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public SqlDataReader getDetailsOfEmployeeByID(int id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetDetailsOfEmployee");
            cmd.Parameters.AddWithValue("@Id", id);
           

            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public void UpdateEmployee(Employee emp)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "UpdateEmpoyee");
            cmd.Parameters.AddWithValue("@FirstName", emp.FirstName);
            cmd.Parameters.AddWithValue("@LastName", emp.LastName);
            cmd.Parameters.AddWithValue("@Email", emp.EmailAddress);
            cmd.Parameters.AddWithValue("@Phone", emp.PhoneNumber);
            cmd.Parameters.AddWithValue("Id", emp.Id);

            cmd.ExecuteNonQuery();
            con.Close();
        }


        public void DeleteEmployee(Employee obj)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "DeleteEmpoyee");
            cmd.Parameters.AddWithValue("@Id", obj.Id);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public DataSet GetDesignation()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetDesignation");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }


        public DataSet GetGrade(int gradeid)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SPMVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetGradeByDesignation");
            cmd.Parameters.AddWithValue("@DesigId", gradeid);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
        }





    }
}