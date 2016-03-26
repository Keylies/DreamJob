using DreamJob.Models;
using DreamJob.ViewModels;
using System;
using System.Web.Mvc;

namespace DreamJob.Controllers.Home
{
    
    public class HomeController : Controller
    {
        // Route vers la page des offres d'emploi
        public ActionResult Index()
        {
            Dal dal = new Dal();

            HomeViewModel vm = new HomeViewModel
            {
                ListeDesArticles = dal.ObtientTousLesArticles(),
                ListeDesTags = dal.ObtientTousLesTags(),
                Authentifie = HttpContext.User.Identity.IsAuthenticated
            };

            if (HttpContext.User.Identity.IsAuthenticated)
            {
                vm.ListeDesTagsUtilisateur = dal.ObtientUtilisateurTags();
            }

            return View(vm);
        }

        // Route autorisee seulement aux utilisateurs authentifies
        [Authorize]
        // Route pour voter pour une offre d'emploi
        public ActionResult Favorise(int id)
        {
            Dal dal = new Dal();

            if (!dal.hasFavorised(id))
                dal.Favorise(id);

            HomeViewModel vm = new HomeViewModel
            {
                ListeDesArticles = dal.ObtientTousLesArticles()
            };
            return View("Index", vm);
        }

        // Route autorisee seulement aux utilisateurs authentifies
        [Authorize]
        // Route pour voter contre une offre d'emploi
        public ActionResult Unfavorise(int id)
        {
            Dal dal = new Dal();

            if (!dal.hasFavorised(id))
                dal.Unfavorise(id);
            HomeViewModel vm = new HomeViewModel
            {
                ListeDesArticles = dal.ObtientTousLesArticles()
            };
            return View("Index", vm);
        }

        public ActionResult AfficheOffres()
        {
            Dal dal = new Dal();
            HomeViewModel vm;
            var tags = Request.QueryString["tags"];

            if (!String.IsNullOrEmpty(tags))
            {
                System.Diagnostics.Debug.WriteLine("Articles filtrés");
                vm = new HomeViewModel
                {
                    ListeDesArticles = dal.ObtientOffresFiltrees(tags)
                };
            }
            else {
                System.Diagnostics.Debug.WriteLine("Pas de tags, tous les articles");
                vm = new HomeViewModel
                {
                    ListeDesArticles = dal.ObtientTousLesArticles()
                };
            }

            return PartialView(vm);
        }
    }
}