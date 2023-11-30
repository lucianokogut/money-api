package br.com.lucianokogut.money.api.service;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.lucianokogut.money.api.model.Pessoa;
import br.com.lucianokogut.money.api.repository.PessoaRepository;

@Service
public class PessoaService {

    @Autowired
    private PessoaRepository pessoaRepository;

    public Pessoa atualizar(Long codigo, Pessoa pessoa) {
        Optional<Pessoa> pessoaOptional = pessoaRepository.findById(codigo);

        if (pessoaOptional.isEmpty()) {
            throw new NoSuchElementException();
        }

        Pessoa pessoaSalva = pessoaOptional.get();
        BeanUtils.copyProperties(pessoa, pessoaSalva, "codigo");
        return pessoaRepository.save(pessoaSalva);
    }
}
