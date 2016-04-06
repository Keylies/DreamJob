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
                vm.ListeDesCustomTags = dal.ObtientCustomTags();
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
            HomeViewModel vm = new HomeViewModel();
            var tags = Request.QueryString["tags"];
            var sortMode = Request.QueryString["sortMode"];
            var sortDirection = Request.QueryString["sortDirection"];
            var favori = Request.QueryString["favori"];

            if (!String.IsNullOrEmpty(tags))
                vm.ListeDesArticles = dal.ObtientOffresFiltrees(tags, sortMode, sortDirection);
            else
                vm.ListeDesArticles = dal.ObtientTousLesArticles(sortMode, sortDirection);

            if (!String.IsNullOrEmpty(favori))
            {
                if (HttpContext.User.Identity.IsAuthenticated)
                {
                    dal.Favorise(Int32.Parse(favori));
                    vm.InfoMessage = "L'offre a été ajoutée dans vos favoris avec succès";
                }
                else
                    vm.InfoMessage = "Veuillez-vous connecter pour mettre cette offre en favori";
            }

            return PartialView(vm);
        }
    }
}