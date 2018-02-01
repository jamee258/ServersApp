package org.o7planning.simplewebapp.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.o7planning.simplewebapp.beans.ServerInfo;
import org.o7planning.simplewebapp.beans.UserAccount;

public class DBUtils {

	public static UserAccount findUser(Connection conn, //
			String userName, String password) throws SQLException {

		String sql = "Select a.User_Name, a.Password, a.Gender from User_Account a " //
				+ " where a.User_Name = ? and a.password= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String gender = rs.getString("Gender");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setGender(gender);
			return user;
		}
		return null;
	}

	public static UserAccount findUser(Connection conn, String userName) throws SQLException {

		String sql = "Select a.User_Name, a.Password, a.Gender from User_Account a "//
				+ " where a.User_Name = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String password = rs.getString("Password");
			String gender = rs.getString("Gender");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setGender(gender);
			return user;
		}
		return null;
	}

	public static List<ServerInfo> queryProduct(Connection conn) throws SQLException {
		String sql = "Select a.Server, a.Environment, a.Type, a.App1, a.App2, a.App3, a.App4, a.App5, a.App6, a.App7, a.App8, a.Start_Date, a.End_Date, a.Allocation_Status, a.Comments, a.Application_Links, a.Installed_Softwares_And_Versions, a.Support_End_Date, a.Space_Available from ServerInfo a  ";

		// Store the compiled SQL Query in a PreparedStatement
		PreparedStatement pstm = conn.prepareStatement(sql);

		// Execute SQL Query & store in an ArrayList
		// ArrayList accessible from ProductListServlet
		ResultSet rs = pstm.executeQuery();
		List<ServerInfo> productList = new ArrayList<ServerInfo>();
		while (rs.next()) {
			String Server = rs.getString("Server");
			String Environment = rs.getString("Environment");
			String Type = rs.getString("Type");
			String App1 = rs.getString("App1");
			String App2 = rs.getString("App2");
			String App3 = rs.getString("App3");
			String App4 = rs.getString("App4");
			String App5 = rs.getString("App5");
			String App6 = rs.getString("App6");
			String App7 = rs.getString("App7");
			String App8 = rs.getString("App8");
			String Start_Date = rs.getString("Start_Date");
			String End_Date = rs.getString("End_Date");
			String Allocation_Status = rs.getString("Allocation_Status");
			String Comments = rs.getString("Comments");
			String Application_Links = rs.getString("Application_Links");
			String Installed_Softwares_And_Versions = rs.getString("Installed_Softwares_And_Versions");
			String Support_End_Date = rs.getString("Support_End_Date");
			String Space_Available = rs.getString("Space_Available");
			ServerInfo product = new ServerInfo();
			product.setServer(Server);
			product.setEnvironment(Environment);
			product.setType(Type);
			product.setApp1(App1);
			product.setApp2(App2);
			product.setApp3(App3);
			product.setApp4(App4);
			product.setApp5(App5);
			product.setApp6(App6);
			product.setApp7(App7);
			product.setApp8(App8);
			product.setStart_Date(Start_Date);
			product.setEnd_Date(End_Date);
			product.setAllocation_Status(Allocation_Status);
			product.setComments(Comments);
			product.setApplication_Links(Application_Links);
			product.setInstalled_Softwares_And_Versions(Installed_Softwares_And_Versions);
			product.setSupport_End_Date(Support_End_Date);
			product.setSpace_Available(Space_Available);
			productList.add(product);
		}
		return productList;
	}

	public static ServerInfo findProduct(Connection conn, String code) throws SQLException {
		String sql = "Select a.Server, a.Environment, a.Type, a.App1, a.App2, a.App3, a.App4, a.App5, a.App6, a.App7, a.App8, a.Start_Date, a.End_Date, a.Allocation_Status, a.Comments, a.Application_Links, a.Installed_Softwares_And_Versions, a.Support_End_Date, a.Space_Available from ServerInfo a where a.Server=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, code);

		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {
			String Server = rs.getString("Server");
			String Environment = rs.getString("Environment");
			String Type = rs.getString("Type");
			String App1 = rs.getString("App1");
			String App2 = rs.getString("App2");
			String App3 = rs.getString("App3");
			String App4 = rs.getString("App4");
			String App5 = rs.getString("App5");
			String App6 = rs.getString("App6");
			String App7 = rs.getString("App7");
			String App8 = rs.getString("App8");
			String Start_Date = rs.getString("Start_Date");
			String End_Date = rs.getString("End_Date");
			String Allocation_Status = rs.getString("Allocation_Status");
			String Comments = rs.getString("Comments");
			String Application_Links = rs.getString("Application_Links");
			String Installed_Softwares_And_Versions = rs.getString("Installed_Softwares_And_Versions");
			String Support_End_Date = rs.getString("Support_End_Date");
			String Space_Available = rs.getString("Space_Available");
			ServerInfo product = new ServerInfo(Server, Environment, Type, App1, App2, App3, App4, App5, App6, App7,
					App8, Start_Date, End_Date, Allocation_Status, Comments, Application_Links,
					Installed_Softwares_And_Versions, Support_End_Date, Space_Available);
			return product;
		}
		return null;
	}

}