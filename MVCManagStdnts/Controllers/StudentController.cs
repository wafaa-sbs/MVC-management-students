using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using MVCManagStdnts.Models;

namespace MVCManagStdnts.Controllers
{
    public class StudentController : Controller
    {
        private readonly ApplicationDbContext _db;
        public StudentController(ApplicationDbContext db)
        {
            _db = db;
        }
        public IActionResult Index()
        {
            var displaydata = _db.Students.ToList();
            return View(displaydata);
        }

        [HttpGet]
        public async Task<IActionResult> Index(string studentsearch)
        {
            ViewData["GetStudentdetails"] = studentsearch;

            var studentquery= from X in _db.Students select X;
            if (!String.IsNullOrEmpty(studentsearch))
            {
                studentquery = studentquery.Where(X=>X.Fname.Contains(studentsearch) || X.Lname.Contains(studentsearch));

            }
            return View(await studentquery.AsNoTracking().ToListAsync());
        }

        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(NewStudentclass nsc)
        {
            if (ModelState.IsValid)
            {
                _db.Add(nsc);
                await _db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(nsc);
        }
            public async Task<ActionResult> Edit(int? Id)
        {
            if(Id==null)
            {
                return RedirectToAction("index");
            }
            var getstudentdetaills = await _db.Students.FindAsync(Id);
            return View(getstudentdetaills);
        }
        
        [HttpPost]
        public async Task<ActionResult> Details(NewStudentclass nc)
        {
            if(ModelState.IsValid)
            {
                _db.Update(nc);
                await _db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(nc);
        }

        public async Task<ActionResult> Details(int? Id)
        {
            if (Id == null)
            {
                return RedirectToAction("index");
            }
            var getstudentdetaills = await _db.Students.FindAsync(Id);
            return View(getstudentdetaills);
        }

        public async Task<ActionResult> Delete(int? Id)
        {
            if (Id == null)
            {
                return RedirectToAction("index");
            }
            var getstudentdetaills = await _db.Students.FindAsync(Id);
            return View(getstudentdetaills);
        }
        [HttpPost]
        public async Task<ActionResult> Delete(int Id)
        {
            var getstudentdetaills = await _db.Students.FindAsync(Id);
            _db.Students.Remove((getstudentdetaills));
            await _db.SaveChangesAsync();

            return RedirectToAction("index");
        }

    }
}
