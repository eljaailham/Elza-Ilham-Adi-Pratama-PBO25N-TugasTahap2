/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package karyawan;
import configDB.configDB;
import javax.swing.JOptionPane;
/**
 *
 * @author ACER
 */
public class karyawan {
    
       /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
//        configDB objekku = new configDB();
//        if (objekku.duplicateKey("biodata", "id_biodata", "1")){
//            JOptionPane.showMessageDialog(null, "Maaf Kode DVD sudah ada");
//        }else{
//            JOptionPane.showMessageDialog(null, "Kode DVD Belum Ada");
//        }

        new gui.mainFrame().setVisible(true);
        
    }
    
}
