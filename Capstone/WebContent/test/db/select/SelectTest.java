package test.db.select;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectTest {

	private String rental;
	private String deposit;
	private String able;
	private String trade;
	private String condition;
	private String position;
	private String info;

	public void select() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/testbox";
			Connection conn = DriverManager.getConnection(url, "root", "skshboris2");
			Statement stmt = conn.createStatement();
			String sql = "SELECT * FROM testinput";

			ResultSet rs = stmt.executeQuery(sql);

			rs.next();
			rental = rs.getString("rentalfee");
			deposit = rs.getString("deposit");
			able = rs.getString("ableday");
			trade = rs.getString("tradeway");
			condition = rs.getString("productCondition");
			position = rs.getString("position");
			info = rs.getString("productInfo");

			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getRental() {
		return rental;
	}

	public String getDeposit() {
		return deposit;
	}

	public String getAble() {
		return able;
	}

	public String getTrade() {
		return trade;
	}

	public String getCondition() {
		return condition;
	}

	public String getPosition() {
		return position;
	}

	public String getInfo() {
		return info;
	}
}
