package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BDD.Connexion;


/**
 * Servlet implementation class GestionDevisServ
 */
@WebServlet("/GestionDevisServ")
public class GestionDevisServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionDevisServ() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		String msg[] = {"slt","sava","oui"};
		boolean a = true;
		String[]titres={"titre1","titre2","titre3"};
		request.setAttribute("titres", titres);
		request.setAttribute("msg", msg);
		request.setAttribute("a", a);
		*/
				
		
		
		//Connexion tablenoms = new Connexion();
    	Connexion listeDevis = new Connexion();
		request.setAttribute("listeDevis", listeDevis.loadDevis());
		this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_devis.jsp").forward(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		/*f.verfiId(request);
		request.setAttribute("f", f);*/
		
		
		
		/*Utilisateur u = new Utilisateur(request.getParameter("nom"),request.getParameter("prenom"));
		
		Connexion tablenoms = new Connexion();
		tablenoms.ajouterUtilisateur(u);
		request.setAttribute("utilisateurs", tablenoms.recupereUtilisateurs());
		this.getServletContext().getRequestDispatcher("/1_AgentDesPrestations/gestion_devis.jsp").forward(request, response);*/
	}

}
