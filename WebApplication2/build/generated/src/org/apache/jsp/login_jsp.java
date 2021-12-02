package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import myconnection.database;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <!-- CSS only -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String user = request.getParameter("user");
            String upass = request.getParameter("upwd");
            String submit = request.getParameter("submitbtn");
 
            
            database dbobj = new database();
            
        if(submit!=null)
          {
                  
            if(dbobj.checkuser(user, upass))
            {
                HttpSession s = request.getSession();
                s.setAttribute("sname", user);
                response.sendRedirect("Member.jsp");
//                out.println("corerct");
            }
            else
            {
                out.println("wrong");
            }
          }   
            
            
            
      out.write("\n");
      out.write("    \n");
      out.write("        <form action=\"login.jsp\" name=\"login\">\n");
      out.write("            <table border=\"1px solid border\" class=\"mt-5 border border-dark row col-md-3 m-5 \" >\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"\">Username</td>\n");
      out.write("                <td><input class=\"form-control mt-3\" type=\"text\" name=\"user\"</td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>Password</td>\n");
      out.write("                <td><input class=\"form-control mt-3\" type=\"password\" name=\"upwd\"</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><input class=\"form-control btn btn-success mt-3\" type=\"submit\" name=\"submitbtn\" value=\"login\"></td>\n");
      out.write("                <td><input class=\"form-control btn btn-info mt-3\" type=\"reset\" name=\"resettbtn\" value=\"Reset\"></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
