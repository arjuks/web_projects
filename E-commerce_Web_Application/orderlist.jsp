<%-- 
    Document   : orderlist
    Created on : 14 Nov, 2014, 6:21:25 PM
    Author     : Arj
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="productspackage.Order"%>
<%@page import="java.util.ArrayList"%>
<%@include file="header.jsp" %>
            <%@include file="user-navigation.jsp" %>
            <div class="area">
                <%@include file="site-navigation.jsp" %>
                <div class="main-content">
                    <%  
                    HttpSession s= request.getSession();
                    ArrayList<Order> ols = (ArrayList<Order>) s.getAttribute("theOrders");
                    int k =0;
                    %>
                    <h3>Orders List</h3>
                    <table>
                        <tr>
                            <th>
                                Order Number
                            </th>
                            <th>
                                Customer
                            </th>
                            <th>
                                Order Date
                            </th>
                            <th>
                                Total
                            </th>
                        </tr>
                        <% for(k = 0 ;k < ols.size() ;k++) { %>
                        <tr>
                        
                        <td><%= ols.get(k).getOrderNumber()%>
                        </td>
                        <td><%= ols.get(k).getUser()%>
                        </td>
                        <td><%= ols.get(k).getDate()%>
                        </td>
                        <td><%= ols.get(k).getTotalCost()%>
                        </td>
                        
                        </tr>
                
                         <% } %>
                       
                        
                    </table>
                </div>
                </div>
          <%@include file="footer.jsp" %>
        