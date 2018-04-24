package Control;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BDD.Connexion;
import Entites.Produit;

/**
 * Servlet implementation class ListeProduits
 */
@WebServlet("/ListeProduits")
public class ListeProduits extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Produit>produits = new ArrayList<Produit>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListeProduits() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connexion cnx = new Connexion();
		ResultSet resu = cnx.afficherTable("produit");
		produits.clear();
		 try {
			 while (resu.next()){
				 
				 String codeProd = resu.getString("idProd");
				 String marque = resu.getString("marque");
				 int qte = resu.getInt("qtestock");				 
				 float PU = resu.getFloat("pu");
				 String libelle= resu.getString("libelle");
				 Produit prod = new  Produit(codeProd,libelle, PU,qte,marque);
				 produits.add(prod);
			 }
			 }
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		 
		 request.setAttribute("produits", produits);
		 this.getServletContext().getRequestDispatcher("/2_GestionnaireDuStock/Produits.jsp").forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
