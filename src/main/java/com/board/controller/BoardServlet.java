package com.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.controller.action.Action;

//요청을 받아 전달받은 command값을 Factory에서 각각 분배

@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String command = request.getParameter("command");
		
		System.out.println("전달받은command 값 : " + command);
		//ActionFactory 객체 af 생성
		ActionFactory af = ActionFactory.getInstance();
		//ActionFactory 메소드 getAction으로, 요청받은 command변수를 이용하여 설정된 인스턴스 불러옴 
		Action action = af.getAction(command);
		
		if (action != null) {
			action.execute(request, response); // 불러온 인스턴스를 통해 action인터페이스 오버라이딩
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
}