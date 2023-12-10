package br.com.lucianokogut.money.api.service;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.lucianokogut.money.api.model.Lancamento;
import br.com.lucianokogut.money.api.repository.LancamentoRepository;

@Service
public class LancamentoService {

    @Autowired
    private LancamentoRepository lancamentoRepository;

    public Lancamento atualizar(Long codigo, Lancamento lancamento) {
        Lancamento lancamentoSalvo = buscarLancamentoPeloCodigo(codigo);
        BeanUtils.copyProperties(lancamento, lancamentoSalvo, "codigo");
        return lancamentoRepository.save(lancamentoSalvo);
    }

    private Lancamento buscarLancamentoPeloCodigo(Long codigo) {
        Optional<Lancamento> lancamentoOptional = lancamentoRepository.findById(codigo);

        if (lancamentoOptional.isEmpty()) {
            throw new NoSuchElementException();
        }

        Lancamento lancamentoSalvo = lancamentoOptional.get();
        return lancamentoSalvo;
    }

}
