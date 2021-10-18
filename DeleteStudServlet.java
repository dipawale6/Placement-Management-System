package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Student;
import com.helper.FactoryProvider;


public class DeleteStudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteStudServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Student note=(Student)s.get(Student.class, noteId);
			s.delete(note);		
			tx.commit();
			s.close();
			response.sendRedirect("all_stud.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	}
