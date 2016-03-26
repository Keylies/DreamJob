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
                ListeDesTagsUtilisateur = dal.ObtientUtilisateurTags(),
                ListeDesCustomTags = dal.ObtientCustomTags()
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

        public int RemoveCustomTag()
        {
            Dal dal = new Dal();
            var tagId = Int32.Parse(Request.QueryString["tagId"]);
            return dal.RemoveCustomTag(tagId);
        }

        public int AddCustomTag()
        {
            Dal dal = new Dal();
            var tagLabel = Request.QueryString["tagLabel"];
            return dal.AddCustomTag(tagLabel);
        }

        public ActionResult AfficheCustomTags()
        {
            Dal dal = new Dal();
            HomeViewModel vm = new HomeViewModel
            {
                ListeDesCustomTags = dal.ObtientCustomTags()
            };

            return PartialView(vm);
        }
    }
}