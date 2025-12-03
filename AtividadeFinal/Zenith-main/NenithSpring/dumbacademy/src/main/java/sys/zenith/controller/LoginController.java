package sys.zenith.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import sys.zenith.model.Usuario;
import sys.zenith.repository.UsuarioRepository;

@Controller
public class LoginController {

    @Autowired
    private UsuarioRepository usuarioRepository;

    // Redireciona "/" para login
    @GetMapping("/")
    public String home() {
        return "redirect:/login";
    }

    // Formulário de login
    @GetMapping("/login")
    public String loginForm(Model model) {
        model.addAttribute("erro", ""); // inicializa erro
        return "login";
    }

    // Processa login
    @PostMapping("/login")
    public String login(@RequestParam String user,
                        @RequestParam String password,
                        Model model) {
        Usuario usuario = usuarioRepository.findByUsernameAndPassword(user, password).orElse(null);
        if (usuario != null) {
            model.addAttribute("usuario", usuario);
            return "redirect:/alunos"; // login OK
        } else {
            model.addAttribute("erro", "Usuário ou senha inválidos!");
            return "login"; // volta pro login com mensagem
        }
    }

    // Logout simples
    @GetMapping("/logout")
    public String logout() {
        return "redirect:/login";
    }
}
