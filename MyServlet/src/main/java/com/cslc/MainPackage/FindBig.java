package com.cslc.MainPackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

  public class FindBig extends HttpServlet {
  @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     int a=Integer.parseInt(request.getParameter("n1"));
     int b=Integer.parseInt(request.getParameter("n2"));
     int c=Integer.parseInt(request.getParameter("n3"));
     int largest = c > (a > b ? a : b) ? c : ((a > b) ? a : b);
     response.getWriter().print("The largest number is: "+largest);
  }

}
