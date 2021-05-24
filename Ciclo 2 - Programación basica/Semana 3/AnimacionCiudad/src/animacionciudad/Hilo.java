/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animacionciudad;

import ciudad.Ciudad;
import ciudad.ParametrosDibujo;
import ciudad.Posicion;
import ciudad.Sitio;
import java.util.ArrayList;
import java.util.List;
import vehiculo.Automovil;
import vehiculo.Deportivo;
import vehiculo.Furgon;
import vehiculo.Platon;
import vehiculo.Vehiculo;

/**
 * Hilo utilizado para iniciar un proceso independiente
 * @author Camiku
 */
public class Hilo extends Thread {
    
    
    private boolean parar;
    private PanelControles panelControles;
    
    public Hilo(PanelControles panelControles) {
        this.panelControles = panelControles;
    }

    /**
     * Inicializa la ejecución de la aplicación de forma independiente
     */
    @Override
    public void run() {
        Automovil automovil = new Automovil(new Posicion(), 5);
        Deportivo deportivo = new Deportivo(new Posicion(), 5);
        
        Platon camioneta = new Platon(new Posicion(), 3, 4);
        camioneta.llevar(panelControles.getjTextFieldPlaton().getText());
        
        Furgon furgon = new Furgon(new Posicion(2, 50), 3, 4);
        furgon.llevar(panelControles.getjTextFieldCarga().getText());

        List<Vehiculo> listaVehiculos = new ArrayList();

        if (panelControles.getjCheckBoxVehiculosCarga().isSelected()) {
            listaVehiculos.add(camioneta);
            listaVehiculos.add(furgon);
        }
        
        if (panelControles.getjCheckBoxVehiculosFamiliares().isSelected()) {
            listaVehiculos.add(automovil);
            listaVehiculos.add(deportivo);
        }
        
        
        int num_casas = (Integer) panelControles.getjSpinnerCasas().getValue();
        List<Sitio> listaSitios = new ArrayList();
        for (int i = 0; i < num_casas; i++) {
            listaSitios.add(new Sitio(new Posicion()));
        }

        Ciudad ciudad = new Ciudad(listaVehiculos, listaSitios);
        
        int iteraciones = (Integer) panelControles.getjSpinnerIteraciones().getValue();
        parar = false;
        for (int i = 0; i < iteraciones; i++) {
            if (panelControles.getjRadioButtonAdelante().isSelected()) {
                ciudad.mover();
            } else {
                ciudad.moverReversa();
            }
            
            panelControles.getjTextArea().setText(ciudad.pintar());
            
            try {
                sleep((Integer) panelControles.getjSpinnerDormir().getValue());
            } catch (InterruptedException e) {
                e.printStackTrace(); 
            }
            if (parar){
                i = iteraciones;
            }
        }
        // Reactiva el boton de ejecución
        panelControles.getjButtonIniciar().setEnabled(true);
    }

    public void setParar(boolean parar) {
        this.parar = parar;
    }

    
}
