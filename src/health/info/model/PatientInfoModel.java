package health.info.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import health.Data;
import health.utility.AbstractBacking;

public class PatientInfoModel extends AbstractBacking {
	private List<Data> patientList = null;
	private Data selected = null;
	private String searchBy="";
	private String[] optionValues={"ID","First Name","Registration Date","Gender","Age","Country","City","State"};
	private String searchString = "";
	Connection conn = null;
	ResultSet rs = null;
	Statement pstmt = null;
	

	public List<Data> getPatientList() throws SQLException{
		patientList = new ArrayList<Data>();
	
		conn = getConnect();
		pstmt = conn.createStatement(
				ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		 rs = pstmt
				.executeQuery("SELECT * FROM tblpatient WHERE"+' '+getEncodedSearchByString()+' '+"LIKE"+' '+"'"+getSearchString()+'%'+"'");
		
			
		while (rs.next()) {
			String a = rs.getString(1);
			Date b = rs.getDate(2);
			String c = rs.getString(3);
			String d = rs.getString(4);
			String e=rs.getString(5);
			String f=rs.getString(6);
			String g=rs.getString(7);			
			String h=rs.getString(8);
			String i=rs.getString(9);
			String j=rs.getString(10);
			String k=rs.getString(11);
			String l=rs.getString(12);
			String m=rs.getString(13);
			String n=rs.getString(14);
			String o=rs.getString(15);
			String p=rs.getString(16);
			String q=rs.getString(17);
			int r=rs.getInt(18);
			
			patientList.add(new Data(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r));
		}
		
		
		
			cleanObjects();
		
			return patientList;
		
		
	}

	public void setPatientList(List<Data> patientList) {
		this.patientList = patientList;

	}

	public Data getSelected() {

		return selected;
	}

	public void setSelected(Data selected) {
		this.selected = selected;
	}

	public String[] getOptionValues() {
		
		return optionValues;
	}

	public void setOptionValues(String[] optionValues) {
		this.optionValues = optionValues;
	}

	public String getEncodedSearchByString()
	{
		if (this.searchBy.equalsIgnoreCase("ID")) {
			return "p_reg_no";
		}
		else if (this.searchBy.equalsIgnoreCase("First Name")) {
			return "p_fname";
		}
		else if (this.searchBy.equalsIgnoreCase("Registration Date")) {
			return "p_reg_date";
		}
		else if (this.searchBy.equalsIgnoreCase("Gender")) {
			return "p_gender";
			
		}
		else if (this.searchBy.equalsIgnoreCase("Age")) {
			return "p_age";
		}
		else if (this.searchBy.equalsIgnoreCase("Country")) {
			return "p_country";
		}
		else if (this.searchBy.equalsIgnoreCase("City")) {
			return "p_city";
		}
		else if (this.searchBy.equalsIgnoreCase("State")) {
			return "p_state";
		}
		else
			return "p_fname";
		
	}
	public String getSearchBy() {
		return searchBy;
		
	}

	public void setSearchBy(String searchBy) {
		this.searchBy = searchBy;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public String UpdatePatient() {

		try {
			conn = getConnect();
			pstmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		    rs= pstmt.executeQuery("select * from tblpatient where p_reg_no="+"'"+selected.getP_reg_no()+"'");
		   
		    @SuppressWarnings("deprecation")
			java.sql.Date temp=new java.sql.Date(selected.getP_reg_date().getDate(), selected.getP_reg_date().getMonth(), selected.getP_reg_date().getDay());
			rs.next();
		    rs.updateDate(2,temp);
			rs.updateString(3, selected.getP_fname());
			rs.updateString(4, selected.getP_mname());
			rs.updateString(5, selected.getP_lname());
			rs.updateString(6, selected.getP_address());
			rs.updateString(7, selected.getP_country());
			rs.updateString(8, selected.getP_state());
			rs.updateString(9, selected.getP_city());
			rs.updateString(10, selected.getP_mob_no());
			rs.updateString(11, selected.getP_phone_no());
			rs.updateString(12, selected.getP_email_address());
			rs.updateString(13, selected.getP_marital_status());
			rs.updateString(14, selected.getP_religion());
			rs.updateString(15, selected.getP_gender());
			rs.updateString(16, selected.getP_fath_husb_name());
			rs.updateString(17, selected.getP_status());
			rs.updateInt(18, selected.getP_age());
			rs.updateRow();
			FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Successfully Updated Row."));
			cleanObjects();
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		}

		if (pstmt != null) {
			return "ok";
		}

		else
			return null;

	}
	public String patientDelete() throws SQLException
	{   conn=getConnect();
		pstmt=conn.createStatement();
	    int count=pstmt.executeUpdate("delete from tblpatient where p_reg_no="+"'"+selected.getP_reg_no()+"'");
		FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(count+" "+"row deleted."));
	    cleanObjects();
		return "ok";
		
	}

	private void cleanObjects() {
		// TODO Auto-generated method stub
		this.rs=null;
		this.pstmt=null;
		this.conn=null;
		
		
		
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
		this.rs.close();
		this.pstmt.close();
		this.conn.close();
	}

}