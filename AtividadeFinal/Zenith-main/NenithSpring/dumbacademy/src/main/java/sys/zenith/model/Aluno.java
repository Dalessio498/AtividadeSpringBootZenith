package sys.zenith.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Aluno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;
    private String email;

    private Integer idade;
    private String cpf;
    private String endereco;
    private String telefone;
    private String plano; // Base, Premium, Black
    private Double precoPlano;
    private String formaPagamento;

    public Aluno() {}

    public Aluno(String nome, String email, Integer idade, String cpf, String endereco,
                 String telefone, String plano, Double precoPlano, String formaPagamento) {
        this.nome = nome;
        this.email = email;
        this.idade = idade;
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
        this.plano = plano;
        this.precoPlano = precoPlano;
        this.formaPagamento = formaPagamento;
    }

    // Getters e setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public Integer getIdade() { return idade; }
    public void setIdade(Integer idade) { this.idade = idade; }

    public String getCpf() { return cpf; }
    public void setCpf(String cpf) { this.cpf = cpf; }

    public String getEndereco() { return endereco; }
    public void setEndereco(String endereco) { this.endereco = endereco; }

    public String getTelefone() { return telefone; }
    public void setTelefone(String telefone) { this.telefone = telefone; }

    public String getPlano() { return plano; }
    public void setPlano(String plano) { this.plano = plano; }

    public Double getPrecoPlano() { return precoPlano; }
    public void setPrecoPlano(Double precoPlano) { this.precoPlano = precoPlano; }

    public String getFormaPagamento() { return formaPagamento; }
    public void setFormaPagamento(String formaPagamento) { this.formaPagamento = formaPagamento; }
}
