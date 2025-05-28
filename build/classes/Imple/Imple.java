/*package Imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import Bean.managebean;
import Bean.sregbean;
import Bean.taskbean;
import Bean.tlfilebean;
import Bean.tlregbean;
import Dbconn.dbconn;
import Inter.Inter;

public class Imple implements Inter {

	Connection con;
	@Override
	public int sreg(sregbean sb) {
int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO bookshop.usereg VALUES(id,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, sb.getName());
				ps.setString(2, sb.getEmail());
				ps.setString(3, sb.getMobile());
				ps.setString(4, sb.getPassword());
				ps.setString(5, sb.getCpassword());
				ps.setString(6, sb.getImage());
				ps.setLong(7, sb.getTeam());
				ps.setString(8, "request");
				ps.setString(9, sb.getLocation());
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return reg;

}
	@Override
	public boolean slog(sregbean sl) {
		boolean log=false;
		 
		con=dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `bookshop`.`usereg` where upi=? and password=? and status='approved'");
				
				ps.setString(1, sl.getEmail());
				ps.setString(2, sl.getPassword());
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}
	
}
*/

package Imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.sregbean;
import Dbconn.dbconn;
import Inter.Inter;

public class Imple implements Inter {

    private Connection con;

    @Override
    public int sreg(sregbean sb) {
        int reg = 0;
        String sql = "INSERT INTO bookshop.usereg (name, email, mobile, password, cpassword, image, team, status, location) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = dbconn.create(); 
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, sb.getName());
            ps.setString(2, sb.getEmail());
            ps.setString(3, sb.getMobile());
            ps.setString(4, sb.getPassword());
            ps.setString(5, sb.getCpassword());
            ps.setString(6, sb.getImage());
            ps.setLong(7, sb.getTeam());
            ps.setString(8, "request");
            ps.setString(9, sb.getLocation());

            reg = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reg;
    }

    @Override
    public boolean slog(sregbean sl) {
        boolean log = false;
        String sql = "SELECT * FROM bookshop.usereg WHERE email = ? AND password = ? AND status = 'approved'";

        try (Connection con = dbconn.create(); 
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, sl.getEmail());
            ps.setString(2, sl.getPassword());

            try (ResultSet rs = ps.executeQuery()) {
                log = rs.next();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return log;
    }
}
