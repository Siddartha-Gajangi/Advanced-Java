package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterDAO 
{
	public RegisterBean rb=null;
    int k=0;
    public int insert(RegisterBean rb)
    {
    	try
    	{
    		Connection con=DBConnection.getCon();
    		PreparedStatement ps=con.prepareStatement("insert into bankaccount values(?,?,?,?)");
    		ps.setString(1,rb.getFname());
    		ps.setString(2, rb.getEmail());
            ps.setString(3,rb.getUname());
            ps.setString(4, rb.getPassword());
         k=ps.executeUpdate();
    	}
    	catch(Exception e) {
    	e.printStackTrace();
    	}
    	return k;
    }
}
