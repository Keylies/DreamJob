using DreamJob.Models;
using DreamJob.ViewModels;
using System;
using System.Web.Mvc;

namespace DreamJob.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        [Authorize]
        public ActionResult Index()
        {
            Dal dal = new Dal();
            AccountViewModel vm = new AccountViewModel
            {
                ListeDesTags = dal.ObtientTousLesTags(),
                ListeDesTagsUtilisateur = dal.ObtientUtilisateurTags()
            };
            return View(vm);
        }

        public int RemoveUserTag()
        {
            Dal dal = new Dal();
            var tagId = Int32.Parse(Request.QueryString["tagId"]);
            return dal.RemoveUserTag(tagId);
        }

        public int AddUserTag()
        {
            Dal dal = new Dal();
            var tagId = Int32.Parse(Request.QueryString["tagId"]);
            return dal.AddUserTag(tagId);
        }
    }
}