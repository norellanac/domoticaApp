/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.norellanac.domoticaApp.utiles;

import com.panamahitek.ArduinoException;
import jssc.SerialPortException;

/**
 *
 * @author norellanac
 */
public class testArduino {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ArduinoException, SerialPortException {
        // ejemplo basico
        //arduinoUnoSendData2 ard=new arduinoUnoSendData2();
        //ard.enviarDato("2");
        //ard.kill();
        
        
                ArduinoLeoR4 ard=new ArduinoLeoR4();
                ard.enviarDato("1");
                //ard.kill();
                
        
    }
    
}
