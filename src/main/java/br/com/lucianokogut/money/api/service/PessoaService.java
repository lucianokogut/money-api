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
        Pessoa pessoaSalva = buscarPessoaPeloCodigo(codigo);
        BeanUtils.copyProperties(pessoa, pessoaSalva, "codigo");
        return pessoaRepository.save(pessoaSalva);
    }

    public void atualizarPropriedadeAtivo(Long codigo, Boolean ativo) {
        Pessoa pessoaSalva = buscarPessoaPeloCodigo(codigo);
        pessoaSalva.setAtivo(ativo);
        pessoaRepository.save(pessoaSalva);
    }

    private Pessoa buscarPessoaPeloCodigo(Long codigo) {
        Optional<Pessoa> pessoaOptional = pessoaRepository.findById(codigo);

        if (pessoaOptional.isEmpty()) {
            throw new NoSuchElementException();
        }

        Pessoa pessoaSalva = pessoaOptional.get();
        return pessoaSalva;
    }

}
