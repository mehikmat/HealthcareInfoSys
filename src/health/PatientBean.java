package health;

import health.utility.Connector;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;


import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.ValueExpression;
import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

public class PatientBean {
   
	private String p_reg_no;
	private Date   p_reg_date;
	private String p_fname;
	private String p_mname;

	private String p_lname;
	private String p_address;

	private String p_country;

	private String p_state;
	private String p_city;
	private String p_mob_no;
	private String p_phone_no;

	private String p_email_address;
	private String p_marital_status;
	private String p_religion;
	private String p_gender;

	private String p_fath_husb_name;
	private String p_status;
	private int    p_age;

	public String getP_reg_no() {
		return p_reg_no;
	}

	public void setP_reg_no(String p_reg_no) {
		this.p_reg_no = p_reg_no;
	}

	public Date getP_reg_date() {		
	    return p_reg_date;
	}

	public void setP_reg_date(Date p_reg_date) {
		this.p_reg_date = p_reg_date;
	}

	public String getP_fname() {
		return p_fname;
	}

	public void setP_fname(String p_fname) {
		this.p_fname = p_fname;
	}

	public String getP_mname() {
		return p_mname;
	}

	public void setP_mname(String p_mname) {
		this.p_mname = p_mname;
	}

	public String getP_lname() {
		return p_lname;
	}

	public void setP_lname(String p_lname) {
		this.p_lname = p_lname;
	}

	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}

	public String getP_country() {
		return p_country;
	}

	public void setP_country(String p_country) {
		this.p_country = p_country;
	}

	public String getP_state() {
		return p_state;
	}

	public void setP_state(String p_state) {
		this.p_state = p_state;
	}

	public String getP_city() {
		return p_city;
	}

	public void setP_city(String p_city) {
		this.p_city = p_city;
	}

	public String getP_mob_no() {
		return p_mob_no;
	}

	public void setP_mob_no(String p_mob_no) {
		this.p_mob_no = p_mob_no;
	}

	public String getP_phone_no() {
		return p_phone_no;
	}

	public void setP_phone_no(String p_phone_no) {
		this.p_phone_no = p_phone_no;
	}

	public String getP_email_address() {
		return p_email_address;
	}

	public void setP_email_address(String p_email_address) {
		this.p_email_address = p_email_address;
	}

	public String getP_marital_status() {
		return p_marital_status;
	}

	public void setP_marital_status(String p_marital_status) {
		this.p_marital_status = p_marital_status;
	}

	public String getP_religion() {
		return p_religion;
	}

	public void setP_religion(String p_religion) {
		this.p_religion = p_religion;
	}

	public String getP_gender() {
		return p_gender;
	}

	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}

	public String getP_fath_husb_name() {
		return p_fath_husb_name;
	}

	public void setP_fath_husb_name(String p_fath_husb_name) {
		this.p_fath_husb_name = p_fath_husb_name;
	}

	public String getP_status() {
		return p_status;
	}

	public void setP_status(String p_status) {
		this.p_status = p_status;
	}

	public int getP_age() {
		return p_age;
	}

	public void setP_age(int p_age) {
		this.p_age = p_age;
	}

	// Action method to add user

	

	
	public String registerPatient() {
	    
	    boolean added =false;
		FacesContext context = FacesContext.getCurrentInstance();
		
		ELContext elContext = context.getELContext();
		
		Application application = context.getApplication();
		ExpressionFactory expressionFactory = application.getExpressionFactory();
		ValueExpression ve = expressionFactory.createValueExpression(elContext,"#{connector}", Connector.class);
		Connector dbconnector = (Connector) ve.getValue(elContext);
		try {
			Connection conn =dbconnector.getDbConnection();
			PreparedStatement pstmt = conn.prepareStatement("insert into tblpatient values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,getP_reg_no());
			@SuppressWarnings("deprecation")
			java.sql.Date temp=new java.sql.Date(p_reg_date.getYear(), p_reg_date.getMonth(), p_reg_date.getDay());
			pstmt.setDate(2,temp);
			pstmt.setString(3, getP_fname());
			pstmt.setString(4, getP_mname());
			pstmt.setString(5, getP_lname());
			pstmt.setString(6, getP_address());
			pstmt.setString(7, getP_country());
			pstmt.setString(8, getP_state());
			pstmt.setString(9, getP_city());
			pstmt.setString(10, getP_mob_no());
			pstmt.setString(11, getP_phone_no());
			pstmt.setString(12, getP_email_address());
			pstmt.setString(13, getP_marital_status());
			pstmt.setString(14, getP_religion());
			pstmt.setString(15, getP_gender());
			pstmt.setString(16, getP_fath_husb_name());
			pstmt.setString(17, getP_status());
			pstmt.setInt(18, getP_age());
			
			pstmt.executeUpdate();
			added = true;
		} catch (SQLException e) {
			
		}

		// actual application may fail to add user
		FacesMessage doneMessage = null;
		String outcome = null;
		if (added) {
			
			doneMessage = new FacesMessage("Successfully added new user");
			outcome = "register";
		} else {
			doneMessage = new FacesMessage("Failed to add new user");
			outcome = "register";
		}
		FacesContext.getCurrentInstance().addMessage(null, doneMessage);
		return outcome;
	}

	
	

	public void validateEmail(FacesContext context, UIComponent toValidate,
			Object value) throws ValidatorException {
		String emailStr = (String) value;
		if (-1 == emailStr.indexOf("@") || 1 == emailStr.indexOf("@")) {
			FacesMessage message = new FacesMessage("Invalid email address");
			throw new ValidatorException(message);
		}
	}
   public String ClearContent()
   {
	   setP_reg_date(null);
	   setP_address(null);
	   setP_age(0);
	   setP_city(null);
	   
	   setP_country(null);
	   setP_email_address(null);
	   setP_fath_husb_name(null);
	   setP_fname(null);
	   
	   setP_lname(null);
	   setP_mname(null);
	   setP_mob_no(null);
	   setP_phone_no(null);
	 
	   setP_religion(null);
	   setP_state(null);
	   setP_status(null);
	   setP_marital_status(null);
	   
	   setP_reg_no(null);
	   setP_gender(null);
	   return null;
   }
}
