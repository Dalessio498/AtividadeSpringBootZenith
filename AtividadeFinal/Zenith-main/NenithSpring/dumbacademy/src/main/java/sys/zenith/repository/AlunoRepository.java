package sys.zenith.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sys.zenith.model.Aluno;

import java.util.Optional;

public interface AlunoRepository extends JpaRepository<Aluno, Long> {
    Optional<Aluno> findByCpf(String cpf);
}
