using System.ComponentModel.DataAnnotations;

namespace Blog.ViewModels.Accounts;

public class UploadImageViewModel
{
    [Required(ErrorMessage = "Imagem Valida")]
    public string Base64Image { get; set; } = string.Empty;
}