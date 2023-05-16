using System.ComponentModel.DataAnnotations;

namespace Blog.ViewModels.Categories;

public class EditorCategoryViewModel
{
    [Required(ErrorMessage = "O campo nome e obrigatorio.")]
    [StringLength(80, MinimumLength = 3, ErrorMessage = "Este campo deve conter no minimo 3 caracteres e no maximo 80 caracteres.")]
    public string Name { get; set; } = string.Empty;

    [Required(ErrorMessage = "O campo slug e obrigatorio.")]
    [StringLength(80, MinimumLength = 3, ErrorMessage = "Este campo deve conter no minimo 3 caracteres e no maximo 80 caracteres.")]
    public string Slug { get; set; } = string.Empty;
}