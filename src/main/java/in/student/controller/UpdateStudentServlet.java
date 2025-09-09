package in.student.controller;

import java.io.IOException;
import java.sql.*;

import in.student.util.DatabaseUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/update")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UpdateStudentServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id").trim());
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String course=request.getParameter("course");
		
		String sql="UPDATE students SET name=?,email=?,course=? WHERE id=?";
		
		try(Connection conn=DatabaseUtil.getConnection();
				PreparedStatement stmt=conn.prepareStatement(sql)) {
				stmt.setString(1, name);
				stmt.setString(2, email);
				stmt.setString(3, course);
				stmt.setInt(4, id);
				
				stmt.executeUpdate();
				
		} catch (SQLException e) {
			throw new ServletException("Database error during student data updation",e);
		}
		response.sendRedirect("listStudents");
	}

}
