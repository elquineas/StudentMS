package com.shs.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shs.dao.MemberDAO;
import com.shs.dto.MemberDTO;

/**
 * Servlet implementation class SHSSelect
 */
@WebServlet("/SHSSelect")
public class SHSSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SHSSelect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("GET:출석부 페이지 출력");
		
		MemberDAO mDao = MemberDAO.getInstance();
		List<MemberDTO> list = mDao.memSelect();
		
		//servlet에서 페이지 이동방법 2가지
		// 1.redirect
		// 새로운 페이지를 만들어서 이동
		// url주소 변환o
		// DB를 타서 변화가 생기는 요청 (게시글을 쓰거나, 회원가입을 하거나...)
		
		// 2.forward
		// 기존에 있던 페이지 위에 새로운 페이지를 덮어씀
		// 값은 그대로 가지고 있고 화면만 새롭게 전환
		// url주소 변환x
		// DB를 타서 변화가 생기지 않는 요청 (검색을 하거나, 회원정보를 보거나...)
		request.setAttribute("shslist", list);
		
		RequestDispatcher dis = request.getRequestDispatcher("shs_select.jsp");
		dis.forward(request, response);
		
		
		//response.sendRedirect("shs_select.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
