package com.openmarket2;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.openmarket.Capstone_productDAO;
import com.openmarket.Capstone_productDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AddImage extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String savePath = "C:/WebSoft/WORKSPACE/SUBNET/Capstone/WebContent/img/"; // ������
																					// ���丮
																					// (������)
		int sizeLimit = 10 * 1024 * 1024; // 10�ް����� ���� �Ѿ�� ���ܹ߻�
		String img = "";
		String img2 = "";
		String img3 = "";
		String img4 = "";
		String originalFileName = "";

		MultipartRequest multi = new MultipartRequest(req, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames(); // ���� �̸� ��ȯ

		String file = (String) files.nextElement();
		img = multi.getFilesystemName(file);
		String file2 = (String) files.nextElement();
		img2 = multi.getFilesystemName(file2);
		String file3 = (String) files.nextElement();
		img3 = multi.getFilesystemName(file3);
		String file4 = (String) files.nextElement();
		img4 = multi.getFilesystemName(file4);

		com.openmarket2.Capstone_productDTO dto = new com.openmarket2.Capstone_productDTO();
		com.openmarket2.Capstone_productDAO dao = new com.openmarket2.Capstone_productDAO();
		// �̹��� �ּ� �Է�
		dto.setImg(img);
		dto.setImg2(img2);
		dto.setImg3(img3);
		dto.setImg4(img4);

		int pronum = dao.selectPronum();
		dao.insertImage(dto, pronum);
	
		RequestDispatcher view = req.getRequestDispatcher("K_success.jsp");
		view.forward(req, resp);
	}
}
