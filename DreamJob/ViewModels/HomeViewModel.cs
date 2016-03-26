using DreamJob.Models;
using System.Collections.Generic;

// Viewmodel contenant tout les champs qui seront utilisees par les differentes vues du siteweb
namespace DreamJob.ViewModels
{
    public class HomeViewModel
    {
        public List<Models.Article> ListeDesArticles { get; set; }
        public List<Models.Tags> ListeDesTags { get; set; }
        public List<Models.Utilisateurs_has_tags> ListeDesTagsUtilisateur { get; set; }
        public List<Models.Custom_tags> ListeDesCustomTags { get; set; }
        public Utilisateur Utilisateur { get; set; }
        public bool Authentifie { get; set; }
    }

    public class AccountViewModel
    {
        public List<Models.Tags> ListeDesTags { get; set; }
        public List<Models.Utilisateurs_has_tags> ListeDesTagsUtilisateur { get; set; }
        public List<Models.Custom_tags> ListeDesCustomTags { get; set; }
        public Utilisateur Utilisateur { get; set; }
        public bool Authentifie { get; set; }
    }
}