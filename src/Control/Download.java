package Control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entites.Devis;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 * Servlet implementation class Download
 */
@WebServlet("/Download")
public class Download extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession sess = null;
	
	private static final int DEFAULT_BUFFER_SIZE = 10240; // 10 ko

	private static final int TAILLE_TAMPON = 10240;
       
    public Download() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		sess = request.getSession();
		
		downloadFile(sess.getAttribute("type")+".pdf", request, response);
		
	}
	
	public void downloadFile(String fichierRequis,HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		String chemin = "C:\\";
		
		
	
		
		/* Vérifie qu'un fichier a bien été fourni */
		if (fichierRequis == null || "/".equals( fichierRequis ) ) {
		    /* Si non, alors on envoie une erreur 404, qui signifie que la ressource demandée n'existe pas */
			
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		   
			return;
		}
		
		/* Décode le nom de fichier récupéré, susceptible de contenir des espaces et autres caractères spéciaux, et prépare l'objet File */
		fichierRequis = URLDecoder.decode( fichierRequis, "UTF-8");
		File fichier = new File( chemin, fichierRequis );
		
		
		
		
		
		        
		/* Vérifie que le fichier existe bien */
		if ( !fichier.exists() ) {
		    /* Si non, alors on envoie une erreur 404, qui signifie que la ressource demandée n'existe pas */
		    response.sendError(HttpServletResponse.SC_NOT_FOUND);
		    return;
		}
		
		/* Récupère le type du fichier */
		String type = getServletContext().getMimeType( fichier.getName() );

		/* Si le type de fichier est inconnu, alors on initialise un type par défaut */
		if ( type == null ) {
		    type = "application/octet-stream";
		}

		/* Initialise la réponse HTTP */
		response.reset();
		response.setBufferSize( DEFAULT_BUFFER_SIZE );
		response.setContentType( type );
		
		response.setHeader( "Content-Length", String.valueOf( fichier.length() ) );
		response.setHeader( "Content-Disposition", "attachment; filename=\"" + fichier.getName() + "\"" );

		/* Prépare les flux */
		BufferedInputStream entree = null;
		BufferedOutputStream sortie = null;
		
		
		try {
		    /* Ouvre les flux */
		    entree = new BufferedInputStream( new FileInputStream( fichier ), TAILLE_TAMPON );
		    sortie = new BufferedOutputStream( response.getOutputStream(), TAILLE_TAMPON );
		 
		    /* ... */
		} finally {/**
		    try {
		        sortie.flush();;
		    } catch ( IOException ignore ) {
		    }
		    try {
		        entree.close();
		    } catch ( IOException ignore ) {
		    }**/
		}
		/* Lit le fichier et écrit son contenu dans la réponse HTTP */
		byte[] tampon = new byte[TAILLE_TAMPON];
		int longueur;
		while ( ( longueur= entree.read( tampon ) ) > 0 ) {
		    sortie.write( tampon, 0, longueur );
		}
		
		entree.close();
		sortie.close();
		
	}
	
	 

	

}
