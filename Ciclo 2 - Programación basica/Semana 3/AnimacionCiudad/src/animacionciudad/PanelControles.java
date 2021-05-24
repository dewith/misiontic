/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animacionciudad;

import ciudad.ParametrosDibujo;
import java.awt.GridLayout;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JSpinner;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/**
 * Panel utilizado para ubicar los controles de dibujo
 * @author Camiku
 */
public class PanelControles extends JPanel {

    // Área de texto para dibujar la ciudad
    private JTextArea jTextArea;
    // Etiqueta del campo de texto de la carga
    private JLabel jLabelCarga;
    // Etiqueta de la lista de cadenas del control del tiempo
    private JLabel jLabelDormir;
    // Etiqueta del campo de texto del platon
    private JLabel jLabelPlaton;
    // Etiqueta del jspinner para el numero de iteraciones
    private JLabel jLabelIteraciones;
    // Etiqueta del jspinner para el numero de casitas
    private JLabel jLabelCasas;
    // Campo de texto del valor de la carga de los furgones
    private JTextField jTextFieldCarga;
    // Campo de texto del valor de la carga de platon
    private JTextField jTextFieldPlaton;
    // Boton usado para iniciar la animación
    private JButton jButtonIniciar;
    // Boton usado para detener la animación
    private JButton jButtonParar;
    // Lista de números del control del tiempo
    private JSpinner jSpinnerDormir;
    // Lista de números del control dl número de iteraciones
    private JSpinner jSpinnerIteraciones;
    // Lista de números del control del numero de casas
    private JSpinner jSpinnerCasas;
    // Boton de chequeo para establecer si aparecen los carros de carga
    private JCheckBox jCheckBoxVehiculosCarga;
    // Boton de chequeo para establecer si aparecen los carros familiares
    private JCheckBox jCheckBoxVehiculosFamiliares;
    // Componente que agrupa un conjunto de botones de opción para 
    // que actuen sincronizados (i.e. que sólo uno pueda ser seleccionado) 
    private ButtonGroup buttonGroupDireccion;
    // Botón de la opción de la dirección hacia adelante
    private JRadioButton jRadioButtonAdelante;
    // Botón de la opción de la dirección hacia atras
    private JRadioButton jRadioButtonReversa;
    

    /**
     * Crea un panel que servirá para ubicar los controles de dibujo
     * @param panelCiudad
     */
    public PanelControles(PanelCiudad panelCiudad) {
        this.jTextArea = panelCiudad.getjTextArea();
        initComponents();
    }

    /**
     * Inicia la creación de las componentes de control de dibujo
     */
    private void initComponents() {
        // Establece el gestor de organización en forma de retícula de tamaño 10x1
        setLayout(new GridLayout(16,1));
        
        jButtonIniciar = new JButton("Iniciar animación");
        // Adiciona el botón a éste panel
        add(jButtonIniciar);
        
        jButtonParar = new JButton("Parar animación");
        add(jButtonParar);

        jLabelCarga = new JLabel("Carga del Furgon: ");
        add(jLabelCarga);

        jTextFieldCarga = new JTextField(ParametrosDibujo.CONTENIDO_CARGA);
        add(jTextFieldCarga);
        
        jLabelPlaton = new JLabel("Carga Platón: ");
        add(jLabelPlaton);
        
        jTextFieldPlaton = new JTextField("1234");
        add(jTextFieldPlaton);
        
        jLabelCasas = new JLabel("Número de casas: ");
        add(jLabelCasas);

        jSpinnerCasas = new JSpinner();
        // Establece el valor por defecto de la lista de números
        jSpinnerCasas.setValue(ParametrosDibujo.NUMERO_SITIOS);
        add(jSpinnerCasas);
        
        jLabelDormir = new JLabel("Lapso de dormir: ");
        add(jLabelDormir);

        jSpinnerDormir = new JSpinner();
        // Establece el valor por defecto de la lista de números
        jSpinnerDormir.setValue(ParametrosDibujo.PAUSA_MILISEGUNDOS);
        add(jSpinnerDormir);

        jLabelIteraciones = new JLabel("Número de iteraciones: ");
        add(jLabelIteraciones);
        
        jSpinnerIteraciones = new JSpinner();
        // Establece el valor por defecto de la lista de números
        jSpinnerIteraciones.setValue(ParametrosDibujo.ITERACIONES_CIUDAD);
        add(jSpinnerIteraciones);
        
        jCheckBoxVehiculosCarga = new JCheckBox("Carga");
        // El boton de chequeo aparecerá seleccionado
        jCheckBoxVehiculosCarga.setSelected(true);
        add(jCheckBoxVehiculosCarga);
        
        jCheckBoxVehiculosFamiliares = new JCheckBox("Familiar");
        jCheckBoxVehiculosFamiliares.setSelected(false);
        add(jCheckBoxVehiculosFamiliares);
        
        
        jRadioButtonAdelante = new JRadioButton("Adelante");
        // El boton de opción aparecerá seleccionado
        jRadioButtonAdelante.setSelected(true);
        add(jRadioButtonAdelante);
        
        
        jRadioButtonReversa = new JRadioButton("Reversa");
        // El boton de opción aparecerá seleccionado
        jRadioButtonReversa.setSelected(false);
        add(jRadioButtonReversa);
        
        
        buttonGroupDireccion = new ButtonGroup();
        // Adiciona el boton de opción a un grupo de botones
        buttonGroupDireccion.add(jRadioButtonAdelante);
        buttonGroupDireccion.add(jRadioButtonReversa);
        
        // Crea un auditor que tramitará los eventos generados por el boton
        EventoClic eventoClic = new EventoClic(this);

        // Establece como auditor al objeto eventoClic cuando se presiona el boton
        jButtonIniciar.addActionListener(eventoClic);
        jButtonParar.addActionListener(eventoClic);
        
        /* Crea un auditor que tramitará los eventos generados por la 
        lista de números del control del tiempo**/
        EventoCambioLista eventoCambioLista = new EventoCambioLista(jSpinnerDormir);
        
        // Establece como auditor al objeto eventoCambioLista cuando se 
        // gira la rueda del ratón
        jSpinnerDormir.addMouseWheelListener(eventoCambioLista);
        jSpinnerIteraciones.addMouseWheelListener(eventoCambioLista);
        jSpinnerCasas.addMouseWheelListener(eventoCambioLista);
        // Establece como auditor al objeto eventoCambioLista cuando se 
        // modifica la lista de números
        jSpinnerDormir.addChangeListener(eventoCambioLista);
        jSpinnerIteraciones.addChangeListener(eventoCambioLista);
        jSpinnerCasas.addChangeListener(eventoCambioLista);

    }

    public JTextField getjTextFieldPlaton() {
        return jTextFieldPlaton;
    }

    public JCheckBox getjCheckBoxVehiculosFamiliares() {
        return jCheckBoxVehiculosFamiliares;
    }

    public JSpinner getjSpinnerIteraciones() {
        return jSpinnerIteraciones;
    }

    public JSpinner getjSpinnerCasas() {
        return jSpinnerCasas;
    }
    
    
    

    public JButton getjButtonParar() {
        return jButtonParar;
    }

    public JTextArea getjTextArea() {
        return jTextArea;
    }

    public JTextField getjTextFieldCarga() {
        return jTextFieldCarga;
    }

    public JButton getjButtonIniciar() {
        return jButtonIniciar;
    }

    public JSpinner getjSpinnerDormir() {
        return jSpinnerDormir;
    }

    public JCheckBox getjCheckBoxVehiculosCarga() {
        return jCheckBoxVehiculosCarga;
    }

    public JRadioButton getjRadioButtonAdelante() {
        return jRadioButtonAdelante;
    }

}
