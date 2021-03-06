package com.shs.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shs.dao.MemberDAO;

/**
 * Servlet implementation class SHSDelete
 */
@WebServlet("/SHSDelete")
public class SHSDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SHSDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET: 학생 제적");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id : " + id);
		
		MemberDAO mDao = MemberDAO.getInstance();
		//getInstance 싱글톤패
		int result = mDao.memDelete(id);
		
		if(result > 0) {
			response.sendRedirect("SHSSelect");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
