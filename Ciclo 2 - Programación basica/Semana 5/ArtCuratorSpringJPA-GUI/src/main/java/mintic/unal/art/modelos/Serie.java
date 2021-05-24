/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mintic.unal.art.modelos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.TableGenerator;



/**
 *
 * @author joag
 */
@Entity
@Table(name = "series")
public class Serie {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY) 
    @Column(name="id_serie")
    private Long idSerie;
    
    @Column(name="titulo") // Nombre
    private String titulo;
    
    @Column(name="num_temporadas") // Obra tipo
    private Long numTemporadas;
    
    @Column(name="num_capitulos") // Obra costo
    private Long numCapitulos;

    public Long getIdSerie() {
        return idSerie;
    }

    public void setIdSerie(Long idSerie) {
        this.idSerie = idSerie;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Long getNumTemporadas() {
        return numTemporadas;
    }

    public void setNumTemporadas(Long numTemporadas) {
        this.numTemporadas = numTemporadas;
    }

    public Long getNumCapitulos() {
        return numCapitulos;
    }

    public void setNumCapitulos(Long numCapitulos) {
        this.numCapitulos = numCapitulos;
    }

    @Override
    public String toString() {
        return "Serie{" + "idSerie=" + idSerie + ", titulo=" + titulo + ", numTemporadas=" + numTemporadas + ", numCapitulos=" + numCapitulos + '}';
    }
    


   
}




       
    
    

