package org.o7planning.simplewebapp.beans;

public class ServerInfo {

	private String Server;
	private String Environment;
	private String Type;
	private String App1;
	private String App2;
	private String App3;
	private String App4;
	private String App5;
	private String App6;
	private String App7;
	private String App8;
	private String Start_Date;
	private String End_Date;
	private String Allocation_Status;
	private String Comments;
	private String Application_Links;
	private String Installed_Softwares_And_Versions;
	private String Support_End_Date;
	private String Space_Available;

	public ServerInfo() {

	}

	public ServerInfo(String Server, String Environment, String Type, String App1, String App2, String App3,
			String App4, String App5, String App6, String App7, String App8, String Start_Date, String End_Date,
			String Allocation_Status, String Comments, String Applications_Links,
			String Installed_Softwares_And_Versions, String Support_End_Date, String Space_Available) {
		this.Server = Server;
		this.Environment = Environment;
		this.Type = Type;
		this.App1 = App1;
		this.App2 = App2;
		this.App3 = App3;
		this.App4 = App4;
		this.App5 = App5;
		this.App6 = App6;
		this.App7 = App7;
		this.App8 = App8;
		this.Start_Date = Start_Date;
		this.End_Date = End_Date;
		this.Allocation_Status = Allocation_Status;
		this.Comments = Comments;
		this.Application_Links = Applications_Links;
		this.Installed_Softwares_And_Versions = Installed_Softwares_And_Versions;
		this.Support_End_Date = Support_End_Date;
		this.Space_Available = Space_Available;
	}

	public String getServer() {
		return Server;
	}

	public void setServer(String server) {
		Server = server;
	}

	public String getEnvironment() {
		return Environment;
	}

	public void setEnvironment(String environment) {
		Environment = environment;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getApp1() {
		return App1;
	}

	public void setApp1(String app1) {
		App1 = app1;
	}

	public String getApp2() {
		return App2;
	}

	public void setApp2(String app2) {
		App2 = app2;
	}

	public String getApp3() {
		return App3;
	}

	public void setApp3(String app3) {
		App3 = app3;
	}

	public String getApp4() {
		return App4;
	}

	public void setApp4(String app4) {
		App4 = app4;
	}

	public String getApp5() {
		return App5;
	}

	public void setApp5(String app5) {
		App5 = app5;
	}

	public String getApp6() {
		return App6;
	}

	public void setApp6(String app6) {
		App6 = app6;
	}

	public String getApp7() {
		return App7;
	}

	public void setApp7(String app7) {
		App7 = app7;
	}

	public String getApp8() {
		return App8;
	}

	public void setApp8(String app8) {
		App8 = app8;
	}

	public String getStart_Date() {
		return Start_Date;
	}

	public void setStart_Date(String start_Date) {
		Start_Date = start_Date;
	}

	public String getEnd_Date() {
		return End_Date;
	}

	public void setEnd_Date(String end_Date) {
		End_Date = end_Date;
	}

	public String getAllocation_Status() {
		return Allocation_Status;
	}

	public void setAllocation_Status(String allocation_Status) {
		Allocation_Status = allocation_Status;
	}

	public String getComments() {
		return Comments;
	}

	public void setComments(String comments) {
		Comments = comments;
	}

	public String getApplication_Links() {
		return Application_Links;
	}

	public void setApplication_Links(String applications_Links) {
		Application_Links = applications_Links;
	}

	public String getInstalled_Softwares_And_Versions() {
		return Installed_Softwares_And_Versions;
	}

	public void setInstalled_Softwares_And_Versions(String installed_Softwares_And_Versions) {
		Installed_Softwares_And_Versions = installed_Softwares_And_Versions;
	}

	public String getSupport_End_Date() {
		return Support_End_Date;
	}

	public void setSupport_End_Date(String support_End_Date) {
		Support_End_Date = support_End_Date;
	}

	public String getSpace_Available() {
		return Space_Available;
	}

	public void setSpace_Available(String space_Available) {
		Space_Available = space_Available;
	}

}