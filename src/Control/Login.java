package Control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.io.IOException;
import java.sql.ResultSet;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BDD.Connexion;
import Entites.Utilisateur;



@WebServlet("/Login")
public class Login extends HttpServlet {
	
    public static final String VUE = "/index.jsp";
    //public static final String CHAMP_EMAIL  = "email";
    public static final String CHAMP_PASS   = "pwd";
    //public static final String CHAMP_CONF   = "confirmation";
    public static final String CHAMP_NOM    = "username";
    public static final String ATT_ERREURS  = "erreurs";
    public static final String ATT_RESULTAT = "resultat";
    String code_user;
	String type_user;
	public static final String ATT_USER  = "user";	
	
	boolean attemptConnetion = true;
	private  HttpSession session ;
    
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page d'inscription */
    	
    	request.setAttribute("verification", attemptConnetion);    	
    	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
    	
        String resultat; 
        session = request.getSession();
        Map<String, String> erreurs = new HashMap<String, String>();

        /* Récupération des champs du formulaire. */
        //   String email = request.getParameter( CHAMP_EMAIL );
        String motDePasse = request.getParameter( CHAMP_PASS );
       // String confirmation = request.getParameter( CHAMP_CONF );
        String nom = request.getParameter( CHAMP_NOM );
        
        Connexion connexion = new Connexion();
        Utilisateur user= connexion.verfUser (nom,motDePasse);
    	//System.out.println("user"+user.getNom());
    	System.out.println("pass="+motDePasse);

    	attemptConnetion = true;
        //if (nom.equals("FRK")&& motDePasse.equals("1234ali") ) System.out.println("yeap");
        
        if (user!= null ) 
        {
        	session = request.getSession();
        	session.setAttribute( "utilisateur", user);
        	
        	//System.out.println("===>"+user.getUrlphoto());
        	attemptConnetion=false;        	        	     
        	switch (user.getFonction()) {
        	
        	case "Agent de prestation" : 
        		System.out.println("Agent de prestation");
        		response.sendRedirect("/Stomise/1_AgentDesPrestations/accueil.jsp");
        	break;
        	
        	case "Gestionnaire de stock" : 
        		System.out.println("Gestionnaire de stock");
        		response.sendRedirect("/Stomise/ListeProduits");
        	break;
        	
        	case "Comptable" : 
        		System.out.println("Comptable");
        		response.sendRedirect("/Stomise/4_Comptable/gestion_devis_form.jsp");
        	break;
        	case "Caissier" : 
        		System.out.println("Caissier");
        		response.sendRedirect("/Stomise/3_Caissier/caisse.jsp");
        	break;
        	
        	}
        	
        	}else {
        		attemptConnetion=false;
        		System.out.println("User doesn't existe !!!");
        		response.sendRedirect("/Stomise/Login");
        	}
        	
        System.out.println(attemptConnetion);
        
    	//this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        /* Validation du champ email. */
        
        ///USING BDD
       
        /* Validation des champs mot de passe et confirmation. */
       
         /**try {
            validationMotsDePasse( motDePasse );
        } catch ( Exception e ) {
            erreurs.put( CHAMP_PASS, e.getMessage() );
        }**/

    
        /* Validation du champ nom. */
       
        /* Validation du champ nom. */
        
        /**try {
            validationNom( nom );
        } catch ( Exception e ) {
            erreurs.put( CHAMP_NOM, e.getMessage() );
        }
        
        try {
			MotDePasseCorret(motDePasse, nom);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			erreurs.put( CHAMP_PASS, e.getMessage() );
		}**/
        
        /* Initialisation du résultat global de la validation. */
        /**if ( erreurs.isEmpty() ) {
            resultat = "Succès de l'inscription.";
        
        
        } else {
            resultat = "echec de l'inscription.";
        }**/

        /* Stockage du résultat et des messages d'erreur dans l'objet request */
       /// request.setAttribute( ATT_ERREURS, erreurs );
        ///request.setAttribute( ATT_RESULTAT, resultat );
        //RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/dashboard");
        /* Transmission de la paire d'objets request/response à notre JSP */
        
        
       /** if ( erreurs.isEmpty() ) {

        	HttpSession session = request.getSession();
        	session.setAttribute( "code_user", code_user );
        	session.setAttribute( "type_user", type_user );
        	
        	System.out.println(type_user);
        	if (type_user.equals("admin")){
        		
                response.sendRedirect("liste_rendez_vous.jsp");

        	}
        	if (type_user.equals("Medecin")){
        		response.sendRedirect("liste_rendez_vous_vue_liste.jsp");
        	
        	}
        	if (type_user.equals("Agent de prestation")){
        		
        		response.sendRedirect("liste_rendez_vous.jsp");
        	}
        	if (type_user.equals("stoma")){
        		response.sendRedirect("liste_rendez_vous.jsp");
        	}
        	if (type_user.equals("Gestionnaire")){
        		response.sendRedirect("liste_rendez_vous.jsp");
        	}
        	if (type_user.equals("Assistant")){
        		response.sendRedirect("liste_rendez_vous.jsp");
        	}
        	
        } else {
        	System.out.println("dsqdsq");
        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }
    }**/

    
    /**
     * Valide les mots de passe saisis.
     */
    
    /**private void validationMotsDePasse( String motDePasse ) throws Exception{
        if (motDePasse != null && motDePasse.trim().length() != 0 ) {
            if (motDePasse.trim().length() < 3) {
                throw new Exception("Les mots de passe doivent contenir au moins 3 caractères.");
            }
        } else {
            throw new Exception("Merci de saisir votre mot de passe.");
        }
    }**/

   /* private boolean MotDePasseCorret( String motDePasse,String UserName ) throws Exception{
        boolean correct=false;
    	Connexion con=new Connexion();
    	Connection c=con.getC();
    	ResultSet rs=null;
    	Statement	stmt=null;
    	try {
    			stmt = c.createStatement();                     
    			
    		
    			rs = stmt.executeQuery( "SELECT *  FROM utilisateurs;" );
    			
			
			while ( rs.next() ) {
				code_user=rs.getString("code_user");
				type_user=rs.getString("type_user");
			if (( rs.getString("login_user").equals(UserName))&&(rs.getString("pwd_user").equals(motDePasse))){ correct=true; return true;}
			
			
			
			}
			
    	}catch ( Exception e ) {
    		throw new Exception( "Une erreur est survenue." );
		}
    	rs.close();
		stmt.close();
		c.close();
		if (!correct ) throw new Exception( "Merci de verfier votre informations." );
		return false;
    	
    	
    }*/

    /**
     * Valide le nom d'utilisateur saisi.
     */
    /*private void validationNom( String nom ) throws Exception {
        if ( nom != null && nom.trim().length() < 3 ) {
            throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caracteres." );
        }
    }*/
    


    }
    }