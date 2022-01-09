package advanced.java.program;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OnServletConf2 extends HttpServlet  
{
    
    protected void doGet(HttpServletRequest request, HttpServletResponse res) throws ServletException, IOException {
    	PrintWriter pw=res.getWriter();
		res.setContentType("text/html");
		ServletContext context=getServletContext();
		
		String s1=context.getInitParameter("a");
	    String s2=context.getInitParameter("b");
	    String s3=context.getInitParameter("c");
	        
		ServletConfig conf=getServletConfig();  // Step 1: instantiate ServeltConfig

		
		String s4=conf.getInitParameter("d");
		int a = (Integer.parseInt(s1));
		int b = (Integer.parseInt(s2));
		int c = (Integer.parseInt(s3));
		int d = (Integer.parseInt(s4));
		int sum = a+b+c+d;
		//pw.println("a value is " +s1+ " and b is " +s2);
		pw.println("total is " + sum);
		pw.close();	
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        doGet(request, response);
    }
} 
