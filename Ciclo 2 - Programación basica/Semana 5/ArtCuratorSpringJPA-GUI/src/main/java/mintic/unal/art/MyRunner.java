/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mintic.unal.art;

import java.util.List;
import mintic.unal.art.modelos.Serie;
import java.util.Optional;
import mintic.unal.art.vista.Ventana;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;
import mintic.unal.art.repositorios.SerieRepositorio;

/**
 *
 * @author joag
 */
@Component
public class MyRunner implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(MyRunner.class);

    @Autowired
    private SerieRepositorio obraRepositorio;

    @Override
    public void run(String... args) throws Exception {

        
        
//        
//        logger.info("# de obras: {}", obraRepositorio.count());
//        // select count(*) from obra
//        
//        Serie obra1 = new Serie();
//        obra1.setObrNombre("Caballo 4d");
//        obra1.setObrTipo("Pintura");
//        obra1.setObrCosto(100L);
//        obra1.setExpId(1003L);
//        
//        obraRepositorio.save(obra1);
//        
//        logger.info("Serie guardada: {}", obra1);
//        logger.info("# de obras: {}", obraRepositorio.count());
//        
//        logger.info("------------------------");
//       
//        Serie obra2 = new Serie();
//        obra2.setObrNombre("Luciernaga 345");
//        obra2.setObrTipo("Pintura");
//        obra2.setObrCosto(100L);
//        obra2.setExpId(1006L);
//        
//        obraRepositorio.save(obra2);
//        
//        logger.info("Serie guardada: {}", obra2);
//        logger.info("Serie guardada id: {}", obra2.getObrId());
//        
//        logger.info("------------------------");
//        
//        obra1.setObrNombre("Luciernaga actualizada");
//        obra1.setObrTipo("Escultura");
//        obra1.setObrCosto(300L);
//        obra1.setExpId(1004L);
//        
//        obraRepositorio.save(obra1);
//        
//        logger.info("Serie actualizada: {}", obra1);
//        logger.info("Serie actualizada id: {}", obra1.getObrId());
//        
//        logger.info("# de obras: {}", obraRepositorio.count());
//
//        
//        logger.info("------------------------");
//        
//        Optional<Obra> obraPlanos = obraRepositorio.findById(114L);
//        
//        if(obraPlanos.isPresent()){
//            logger.info("Serie con id 114 : {}", obraPlanos.get());
//        }       
//        
//        logger.info("------------------------");
//        
//        logger.info("Todas las obras sin ordenar:");
//        List<Obra> obras = obraRepositorio.findAll();
//        logger.info("{}", obras);
//        
//        logger.info("------------------------");
//
//        logger.info("Todas las obras ordenadas por nombre y en orden descendente");
//        List<Obra> obrasOrdenadas = obraRepositorio.findAll(Sort.by(Sort.Direction.DESC, "obrNombre"));
//        logger.info("{}", obrasOrdenadas);
//
//        logger.info("------------------------");
//
//        logger.info("Borrar obra 2");
//        obraRepositorio.delete(obra2);
//        
//        logger.info("# de obras: {}", obraRepositorio.count());
//        
        
    }
}
