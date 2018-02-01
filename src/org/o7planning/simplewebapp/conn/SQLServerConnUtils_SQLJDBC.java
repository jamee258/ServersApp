package org.o7planning.simplewebapp.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLServerConnUtils_SQLJDBC {

	// Connect to SQL Server.
	// (Using JDBC Driver: SQLJDBC)
	public static Connection getSQLServerConnection_SQLJDBC() //
			throws ClassNotFoundException, SQLException {

		// Connection Parameters
		String hostName = "PC300780";
		String sqlInstanceName = "SQL2014";
		String database = "App_Test";
		String userName = "rep_test";
		String password = "test_1234";

		return getSQLServerConnection_SQLJDBC(hostName, sqlInstanceName, database, userName, password);
	}

	// Connect to SQLServer, using SQLJDBC Library.
	private static Connection getSQLServerConnection_SQLJDBC(String hostName, //
			String sqlInstanceName, String database, String userName, String password)//
			throws ClassNotFoundException, SQLException {

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

		// URL Connection for SQL Server
		String connectionURL = "jdbc:sqlserver://" + hostName + ":1433" //
				+ ";instance=" + sqlInstanceName + ";databaseName=" + database;

		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}

}