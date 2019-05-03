package com.shs.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shs.dao.MemberDAO;

public class DeletePlayAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id : " + id);
		
		MemberDAO mDao = MemberDAO.getInstance();
		//getInstance 싱글톤패턴
		int result = mDao.memDelete(id);
		
		if(result > 0) {
			url = "select.shs";
		} else {
			url = "index.shs";
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true); //forward 방식으로 보냄
		
		return forward;
	}

}
