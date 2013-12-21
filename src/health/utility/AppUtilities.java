package health.utility;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.faces.model.SelectItem;

public class AppUtilities extends AbstractBacking {

	private ArrayList<SelectItem> countryNames;
	private ArrayList<SelectItem> religionNames;
	private ArrayList<SelectItem> stateNames;
	private ArrayList<SelectItem> cityNames;

	Connection conn = getConnect();

	public ArrayList<SelectItem> getCountryNames() throws SQLException {
		ArrayList<SelectItem> Cnames = new ArrayList<SelectItem>();
		Statement stmt = conn.createStatement();
		ResultSet rsNames = stmt
				.executeQuery("SELECT distinct country_name FROM tblutility");
		while (rsNames.next()) {
			String country = rsNames.getString("country_name");
			Cnames.add(new SelectItem(country, country));
		}
		this.countryNames = Cnames;
		return countryNames;
	}

	public void setCountryNames(ArrayList<SelectItem> countryNames) {
		this.countryNames = countryNames;
	}

	public ArrayList<SelectItem> getReligionNames() throws SQLException {
		ArrayList<SelectItem> Rnames = new ArrayList<SelectItem>();
		Statement stmt = conn.createStatement();
		ResultSet rs1Names = stmt
				.executeQuery("SELECT distinct religion_name FROM tblutility");
		while (rs1Names.next()) {
			String religion = rs1Names.getString("religion_name");
			Rnames.add(new SelectItem(religion, religion));
		}
		this.religionNames = Rnames;
		return religionNames;
	}

	public void setReligionNames(ArrayList<SelectItem> religionNames) {
		this.religionNames = religionNames;
	}

	public ArrayList<SelectItem> getStateNames() throws SQLException {
		ArrayList<SelectItem> Snames = new ArrayList<SelectItem>();
		Statement stmt = conn.createStatement();
		ResultSet rs2Names = stmt
				.executeQuery("SELECT distinct state_name FROM tblutility");
		while (rs2Names.next()) {
			String state = rs2Names.getString("state_name");
			Snames.add(new SelectItem(state, state));
		}
		this.stateNames = Snames;
		return stateNames;
	}

	public void setStateNames(ArrayList<SelectItem> stateNames) {
		this.stateNames = stateNames;
	}

	public ArrayList<SelectItem> getCityNames() throws SQLException {
		ArrayList<SelectItem> CTnames = new ArrayList<SelectItem>();
		Statement stmt = conn.createStatement();
		ResultSet rs3Names = stmt
				.executeQuery("SELECT distinct city_name FROM tblutility");
		while (rs3Names.next()) {
			String city = rs3Names.getString("city_name");
			CTnames.add(new SelectItem(city, city));
		}
		this.cityNames = CTnames;
		return cityNames;
	}

	public void setCityNames(ArrayList<SelectItem> cityNames) {
		this.cityNames = cityNames;
	}

}
