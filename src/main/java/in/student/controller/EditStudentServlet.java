package in.student.controller;

import java.io.IOException;
import java.sql.*;

import in.student.model.Student;
import in.student.util.DatabaseUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class EditStudentServlet
 */
@WebServlet("/edit")
public class EditStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public EditStudentServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		Student student=null;
		
		String sql="SELECT * FROM students WHERE id=?";
		
		try(Connection conn=DatabaseUtil.getConnection();
				PreparedStatement stmt= conn.prepareStatement(sql)){
				stmt.setInt(1, id);
				
				
				try(ResultSet rs=stmt.executeQuery()){
					if(rs.next()) {
						student=new Student(
								rs.getInt("id"),
								rs.getString("name"),
								rs.getString("email"),
								rs.getString("course"));
					}
				}
		}catch (SQLException e) {
		  throw new ServletException("Database error during while fetching students for edit",e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
