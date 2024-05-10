package com.dao;
import java.sql.Connection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.entity.Contact;
import java.util.ArrayList;


public class ContactDAO {
   private Connection conn;
   public ContactDAO(Connection conn) {
	   super();
	   this.conn = conn;
   };
   public boolean saveContact(Contact c)
   {
	   boolean f=false;
	   try {
		   String sql="insert into contact(name,email,phno,userid) values(?,?,?,?) ";
		   PreparedStatement ps=conn.prepareStatement(sql);
		   ps.setString(1, c.getName());
		   ps.setString(2, c.getEmail());
		   ps.setString(3, c.getPhno());
		   ps.setInt(4, c.getUserId());
		   int i=ps.executeUpdate();
		   
		   if(i==1)
		   {
			   f=true;
		   }
		   
	   } catch (Exception e) {
		   e.printStackTrace();
	   }
	   return f;
   }
   public List<Contact> getAllContact(int uId)
   {
	   List<Contact> list=new ArrayList<Contact>();
	   Contact c=null;
	   try {
		   String sql="select * from contact where userid=?";
		   PreparedStatement ps=conn.prepareStatement(sql); 
		   ps.setInt(1, uId);
		   
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   c=new Contact();
			   c.setId(rs.getInt(1));
			   c.setName(rs.getString(2));
			   c.setEmail(rs.getString(3));
			   c.setPhno(rs.getString(4));
			   list.add(c);
		   }
	   } catch (Exception e)
	   {
		   e.printStackTrace();
	   }
	   return list;
   }
}
