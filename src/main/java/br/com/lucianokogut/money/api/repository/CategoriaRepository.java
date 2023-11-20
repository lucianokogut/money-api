package br.com.lucianokogut.money.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import br.com.lucianokogut.money.api.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

}