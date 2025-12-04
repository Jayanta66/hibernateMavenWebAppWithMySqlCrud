package ser;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import myweb.FactoryProvider;
import myweb.Note;


public class DeleteServlet extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DeleteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	try {
		
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Transaction tx = s.beginTransaction();
		
		Note note = (Note)s.get(Note.class, noteId);
		
		s.remove(note);
		
		tx.commit();
		
		s.close();
		
		response.sendRedirect("all_notes.jsp");
		
	}catch(Exception e) {
		
		
	}
	
	}

}
