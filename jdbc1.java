
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author saurav
 */
public class Emp {

    /**
     * @param args the command line arguments
     */
   
       public static void main(String args[])
    {
        String query="select *from employee";
        try
        {
            
        Class.forName("com.mysql.jdbc.Driver");
       
       
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root","saurav007");
        
        Statement st=cn.createStatement();
       // st.executeQuery(query);
        ResultSet rs=st.executeQuery(query);
        //rs.next();
        //String name=rs.getString(1);
        //System.out.println(name);
        while(rs.next())
        {
          System.out.println(rs.getString(1)+" "+rs.getInt(2)+" "+rs.getString(3)+" "+rs.getInt(4));
        }
        
        st.close();
        cn.close();
        }
       
        catch(Exception e)
        {
          System.out.println("hello world");  
        }
    }
    
    }
    

