using DreamJob.Models;
using DreamJob.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DreamJob.Controllers.Favoris
{
    public class FavorisController : Controller
    {
        // GET: Account
        [Authorize]
        public ActionResult Index()
        {
            Dal dal = new Dal();
            FavorisViewModel vm = new FavorisViewModel
            {
                ListeDesFavoris = dal.ObtientUtilisateurFavoris(),
                ListeDesArticles = dal.ObtientTousLesArticles()
            };
            return View(vm);
        }

        public ActionResult AfficheFavoris()
        {
            Dal dal = new Dal();
            var favori = Request.QueryString["favori"];
            FavorisViewModel vm = new FavorisViewModel { };

            if (!String.IsNullOrEmpty(favori))
            {
                var result = dal.Favorise(Int32.Parse(favori));
                if (result == -1)
                    vm.InfoMessage = "L'offre a été retirée de vos favoris avec succès";
                else
                    vm.InfoMessage = "Une erreur s'est produite";
            }

            vm.ListeDesArticles = dal.ObtientTousLesArticles();
            vm.ListeDesFavoris = dal.ObtientUtilisateurFavoris();

            return PartialView(vm);
        }
    }
}