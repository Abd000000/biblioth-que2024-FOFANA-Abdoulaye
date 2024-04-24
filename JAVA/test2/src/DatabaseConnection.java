import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    // Informations de connexion
    static final String URL = "jdbc:mysql://localhost:3306/librairie-fofana-abdoulaye";
    static final String USER = "votre_utilisateur";
    static final String PASSWORD = "votre_mot_de_passe";

    public static void main(String[] args) {
        // Établir la connexion
        try {
            Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connexion réussie !");
            // Vous pouvez maintenant exécuter des requêtes SQL ici
            // Assurez-vous de fermer la connexion une fois que vous avez terminé avec elle
            connection.close();
        } catch (SQLException e) {
            System.out.println("La connexion a échoué !");
            e.printStackTrace();
        }
    }
}
