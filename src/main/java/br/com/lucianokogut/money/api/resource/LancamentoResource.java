package br.com.lucianokogut.money.api.resource;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import br.com.lucianokogut.money.api.model.Lancamento;
import br.com.lucianokogut.money.api.repository.LancamentoRepository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
@RequestMapping("/lancamentos")
public class LancamentoResource {

    @Autowired
    private LancamentoRepository lancamentoRepository;

    @GetMapping
    public List<Lancamento> listar() {
        return lancamentoRepository.findAll();
    }

    @GetMapping("/{codigo}")
    public ResponseEntity<Lancamento> buscarPeloCodigo(@PathVariable Long codigo) {
        // Ajustado o método para findById por causa do deprecated do findOne
        // Corrigido para buscar pela chave primária do tipo Long
        Optional<Lancamento> lancamento = lancamentoRepository.findById(codigo);

        if (lancamento.isEmpty()) {
            throw new NoSuchElementException();
        }

        return lancamento.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
}
