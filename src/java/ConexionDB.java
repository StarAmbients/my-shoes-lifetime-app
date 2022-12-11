import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class ConexionDB {
    
    // Declaramos los datos de conexion a la bd
    private static final String bd="";
    private static final String url="jdbc:mysql://localhost:3306";
    private static final String user="root";
    private static final String password="";
    private static final String driver="com.mysql.cj.jdbc.Driver";
    
    // Declaramos la conexion a mysql
    Connection cx;
    
    //Constructor
    public ConexionDB() {}
    
    // Funcion que va conectarse a mi bd de mysql
    public Connection conectar() {
        cx = null;
        try {
            Class.forName(driver);
            cx = DriverManager.getConnection(url+bd, user, password);
            JOptionPane.showMessageDialog(null,"Se conecto a la BD "+ bd);
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null,"Error" + ex.toString());
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cx;        
    }
    
    // Funcion que va desconectar bd de mysql
    public void desconectar() {
        try {
            cx.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}