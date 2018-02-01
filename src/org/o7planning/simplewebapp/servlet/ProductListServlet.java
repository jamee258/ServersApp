package org.o7planning.simplewebapp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//import java.util.Iterator;
//import java.util.LinkedHashMap;
//import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.o7planning.simplewebapp.beans.ServerInfo;
import org.o7planning.simplewebapp.utils.DBUtils;
import org.o7planning.simplewebapp.utils.MyUtils;

@WebServlet(urlPatterns = { "/productList" })
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductListServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = MyUtils.getStoredConnection(request);
		String errorString = null;
		List<ServerInfo> productList = null;
		try {
			productList = DBUtils.queryProduct(conn);

			// for (ServerInfo s : productList) {
			// System.out.println(s.getServer());
			// }

		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Filter productList on Server Type and store in relevant ArrayLists:

		List<ServerInfo> databaseList = new ArrayList<ServerInfo>();
		List<ServerInfo> jbossList = new ArrayList<ServerInfo>();
		List<ServerInfo> muleList = new ArrayList<ServerInfo>();
		List<ServerInfo> boList = new ArrayList<ServerInfo>();
		List<ServerInfo> etlJobList = new ArrayList<ServerInfo>();
		List<ServerInfo> sharepointApplicationList = new ArrayList<ServerInfo>();
		List<ServerInfo> etlManagementList = new ArrayList<ServerInfo>();
		for (ServerInfo si : productList) {
			if (si.getType().equals("Database Server")) {
				databaseList.add(si);
			} else if (si.getType().equals("JBOSS Server")) {
				jbossList.add(si);
			} else if (si.getType().equals("Mule Server")) {
				muleList.add(si);
			} else if (si.getType().equals("BO Server")) {
				boList.add(si);
			} else if (si.getType().equals("ETL-Job Server")) {
				etlJobList.add(si);
			} else if (si.getType().equals("Sharepoint Application Server")) {
				sharepointApplicationList.add(si);
			} else if (si.getType().equals("ETL-Management Server")) {
				etlManagementList.add(si);
			}
		}

		// Loop through specific ArrayList & store in a new separate ArrayList
		// List<List<ServerInfo>> productListOutput = new ArrayList<List<ServerInfo>>();
		// for (int i = 0; i < jbossList.size(); i += 19) {
		// List<ServerInfo> group = jbossList.subList(i, i + 19 >= jbossList.size() ?
		// jbossList.size() - 1 : i + 19);
		// productListOutput.add(group);
		// }

		// LinkedHashMap Alternative for storing DB info:
		// Map<String, List<ServerInfo>> mappedLists = new LinkedHashMap<String,
		// List<ServerInfo>>();
		// for (ServerInfo si : productList) {
		// List<ServerInfo> list = mappedLists.get(si.getType());
		// if (list == null) {
		// list = new ArrayList<ServerInfo>();
		// mappedLists.put(si.getType(), list);
		// }
		// list.add(si);
		// }

		// Store info in request attribute, before forwarding to views
		request.setAttribute("errorString", errorString);
		request.setAttribute("jbossListOutput", jbossListOutput);
		request.setAttribute("databaseList", databaseList);
		request.setAttribute("jbossList", jbossList);
		request.setAttribute("muleList", muleList);
		request.setAttribute("boList", boList);
		request.setAttribute("etlJobList", etlJobList);
		request.setAttribute("sharepointApplicationList", sharepointApplicationList);
		request.setAttribute("etlManagementList", etlManagementList);
		// request.setAttribute("mappedLists", mappedLists);

		// Forward to /WEB-INF/views/productListView.jsp
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/productListView.jsp");
		dispatcher.forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}