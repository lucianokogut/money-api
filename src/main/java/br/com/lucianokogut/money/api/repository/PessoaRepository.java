package br.com.lucianokogut.money.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import br.com.lucianokogut.money.api.model.Pessoa;

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {

}