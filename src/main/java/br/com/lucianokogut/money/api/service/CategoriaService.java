package br.com.lucianokogut.money.api.service;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.lucianokogut.money.api.model.Categoria;
import br.com.lucianokogut.money.api.repository.CategoriaRepository;

@Service
public class CategoriaService {

    @Autowired
    private CategoriaRepository categoriaRepository;

    public Categoria atualizar(Long codigo, Categoria categoria) {
        Optional<Categoria> categoriaOptional = categoriaRepository.findById(codigo);

        if (categoriaOptional.isEmpty()) {
            throw new NoSuchElementException();
        }

        Categoria categoriaSalva = categoriaOptional.get();
        BeanUtils.copyProperties(categoria, categoriaSalva, "codigo");
        return categoriaRepository.save(categoriaSalva);
    }
}
