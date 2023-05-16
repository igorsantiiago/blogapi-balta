using System.ComponentModel.DataAnnotations;

namespace Blog.ViewModels.Accounts;

public class RegisterViewModel
{
    [Required(ErrorMessage = "O nome e obrigatorio.")]
    [MaxLength(80), MinLength(3)]
    public string Name { get; set; } = string.Empty;

    [Required(ErrorMessage = "O E-mail e obrigatorio.")]
    [EmailAddress(ErrorMessage = "O E-mail e invalido.")]
    public string Email { get; set; } = string.Empty;
}