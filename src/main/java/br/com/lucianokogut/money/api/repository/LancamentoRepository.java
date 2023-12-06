package br.com.lucianokogut.money.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import br.com.lucianokogut.money.api.model.Lancamento;

public interface LancamentoRepository extends JpaRepository<Lancamento, Long> {

}
