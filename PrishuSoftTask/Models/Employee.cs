using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PrishuSoftTask.Models
{
    public class Employee
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "First name is required")]
        [MaxLength(50, ErrorMessage = "First name cannot exceed 50 characters")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Last name is required")]
        [MaxLength(50, ErrorMessage = "Last name cannot exceed 50 characters")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Email is required")]
        [EmailAddress(ErrorMessage = "Invalid email address")]
        [MaxLength(100, ErrorMessage = "Email cannot exceed 100 characters")]
        public string EmailAddress { get; set; }

        [Required(ErrorMessage = "Phone number is required")]
        [RegularExpression(@"^\d{10}$", ErrorMessage = "Phone number must be 10 digits")]
        public long PhoneNumber { get; set; }

        [Required(ErrorMessage = "Designation is required")]
        public int DesignationId { get; set; }

        [Required(ErrorMessage = "Grade is required")]
        public int GradeId { get; set; }

        public string Designation { get; set; }
        public string Grade { get; set; }
        public string DesignationName { get; set; }
        public string GradeName { get; set; }

        public List<Employee> EmployeeList { get; set; }
    }
}
