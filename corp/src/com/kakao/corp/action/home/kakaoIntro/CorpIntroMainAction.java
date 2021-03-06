package com.kakao.corp.action.home.kakaoIntro;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.corp.action.Action;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.repository.CorpIntroRepository;

public class CorpIntroMainAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CorpIntroRepository corpintroRepository = CorpIntroRepository.getInstance();

			CorpIntro corpintro = corpintroRepository.intro();

			request.setAttribute("corpintro", corpintro);

			RequestDispatcher dis = 
					request.getRequestDispatcher("/page/kakaoInfo/corpIntroMain.jsp");
			dis.forward(request, response);

	}
}
