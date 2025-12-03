package sys.zenith.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import sys.zenith.model.Aluno;
import sys.zenith.repository.AlunoRepository;

@Controller
@RequestMapping("/alunos")
public class AlunoController {

    @Autowired
    private AlunoRepository repository;

    @GetMapping
    public String listarAlunos(Model model, @RequestParam(required = false) String cpf) {
        if(cpf != null && !cpf.isEmpty()) {
            Aluno aluno = repository.findByCpf(cpf).orElse(null);
            model.addAttribute("alunos", aluno != null ? java.util.List.of(aluno) : java.util.List.of());
        } else {
            model.addAttribute("alunos", repository.findAll());
        }
        return "alunos";
    }

    @GetMapping("/novo")
    public String formNovoAluno(Model model) {
        model.addAttribute("aluno", new Aluno());
        return "form-aluno";
    }

    @PostMapping("/salvar")
    public String salvarAluno(@ModelAttribute Aluno aluno, Model model) {
        if(aluno.getIdade() != null && aluno.getIdade() < 14){
            model.addAttribute("erroIdade", "A idade mínima é 14 anos.");
            model.addAttribute("aluno", aluno);
            return "form-aluno";
        }
        repository.save(aluno);
        return "redirect:/alunos";
    }


    @GetMapping("/editar/{id}")
    public String editarAluno(@PathVariable Long id, Model model) {
        Aluno aluno = repository.findById(id).orElseThrow();
        model.addAttribute("aluno", aluno);
        return "form-aluno";
    }

    @GetMapping("/deletar/{id}")
    public String deletarAluno(@PathVariable Long id) {
        repository.deleteById(id);
        return "redirect:/alunos";
    }
}
