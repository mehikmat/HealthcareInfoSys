package health;

import java.io.Serializable;
import java.util.Date;

import javax.faces.bean.RequestScoped;

@RequestScoped
public class Data implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
   public Data(String p_reg_no,Date p_reg_date,String p_fname,String p_mname,String p_lname,String p_address,
		   		String p_country,String p_state,String p_city,String p_mob_no,String p_phone_no,String p_email_address,
		   		String p_marital_status,String p_religion,String p_gender,String p_fath_husb_name,String p_status,int p_age)
   {
	    this.p_address=p_address;
	    this.p_age=p_age;
	    this.p_city=p_city;
	    this.p_country=p_country;
	    this.p_email_address=p_email_address;
	    this.p_fath_husb_name=p_fath_husb_name;
	    this.p_fname=p_fname;
	    this.p_gender=p_gender;
	    this.p_lname=p_lname;
	    this.p_marital_status=p_marital_status;
	    this.p_mname=p_mname;
	    this.p_mob_no=p_mob_no;
	    this.p_phone_no=p_phone_no;
	    this.p_reg_date=p_reg_date;
	    this.p_reg_no=p_reg_no;
	    this.p_religion=p_religion;
	    this.p_state=p_state;
	    this.p_status=p_status;
	   
   }

}
