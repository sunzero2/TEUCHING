/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.35
 * Generated at: 2020-06-16 18:22:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginform_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<!-- Required meta tags -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Fonts -->\r\n");
      out.write("    <link rel=\"dns-prefetch\" href=\"https://fonts.gstatic.com\">\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Raleway:300,400,600\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"resources/css/loginform.css\">\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"icon\" href=\"Favicon.png\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("\t<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n");
      out.write("\t<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t<!-- 라디오 css -->\r\n");
      out.write("\t<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n");
      out.write("\t<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("<title>Teu-Ching Teu-Ching</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write(".toggle_radio{\r\n");
      out.write("  position: relative;\r\n");
      out.write("  background: #215d9e;\r\n");
      out.write("  margin: 4px auto;\r\n");
      out.write("  overflow: hidden;\r\n");
      out.write("  padding: 0 !important;\r\n");
      out.write("  -webkit-border-radius: 50px;\r\n");
      out.write("  -moz-border-radius: 50px;\r\n");
      out.write("  border-radius: 50px;\r\n");
      out.write("  position: relative;\r\n");
      out.write("  height: 26px;\r\n");
      out.write("  width: 215px;\r\n");
      out.write("}\r\n");
      out.write(".toggle_radio > * {\r\n");
      out.write("  float: left;\r\n");
      out.write("}\r\n");
      out.write(".toggle_radio input[type=radio]{\r\n");
      out.write("  display: none;\r\n");
      out.write("  /*position: fixed;*/\r\n");
      out.write("}\r\n");
      out.write(".toggle_radio label{\r\n");
      out.write("  font: 90%/1.618 \"Source Sans Pro\";\r\n");
      out.write("  color: rgba(255,255,255,.9);\r\n");
      out.write("  z-index: 0;\r\n");
      out.write("  display: block;\r\n");
      out.write("  width: 100px;\r\n");
      out.write("  height: 20px;\r\n");
      out.write("  margin: 3px 3px;\r\n");
      out.write("  -webkit-border-radius: 50px;\r\n");
      out.write("  -moz-border-radius: 50px;\r\n");
      out.write("  border-radius: 50px;\r\n");
      out.write("  cursor: pointer;\r\n");
      out.write("  z-index: 1;\r\n");
      out.write("  /*background: rgba(0,0,0,.1);*/\r\n");
      out.write("  text-align: center;\r\n");
      out.write("  /*margin: 0 2px;*/\r\n");
      out.write("  /*background: blue;*/ /*make it blue*/\r\n");
      out.write("}\r\n");
      out.write(".toggle_option_slider{\r\n");
      out.write("  /*display: none;*/\r\n");
      out.write("  /*background: red;*/\r\n");
      out.write("  width: 100px;\r\n");
      out.write("  height: 20px;\r\n");
      out.write("  position: absolute;\r\n");
      out.write("  top: 3px;\r\n");
      out.write("  -webkit-border-radius: 50px;\r\n");
      out.write("  -moz-border-radius: 50px;\r\n");
      out.write("  border-radius: 50px;\r\n");
      out.write("  -webkit-transition: all .4s ease;\r\n");
      out.write("  -moz-transition: all .4s ease;\r\n");
      out.write("  -o-transition: all .4s ease;\r\n");
      out.write("  -ms-transition: all .4s ease;\r\n");
      out.write("  transition: all .4s ease;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#first_toggle:checked ~ .toggle_option_slider{\r\n");
      out.write("  background: rgba(255,255,255,.3);\r\n");
      out.write("  left: 3px;\r\n");
      out.write("}\r\n");
      out.write("#second_toggle:checked ~ .toggle_option_slider{\r\n");
      out.write("  background: rgba(255,255,255,.3);\r\n");
      out.write("  left: 109px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\r\n");
      out.write("\t<main class=\"login-form\">\r\n");
      out.write("\t\t<div class=\"cotainer\">\r\n");
      out.write("\t\t\t<div class=\"row justify-content-center\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-8\">\r\n");
      out.write("\t\t\t\t\t<div class=\"card\" style=\"width\t: 50% !important; left: 22%;\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-header\">Login</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\t\t\t\t\t\t\t<form name=\"signFrm\" id=\"signFrm\"\r\n");
      out.write("\t\t\t\t\t\t\taction=\"");
      out.print(request.getContextPath());
      out.write("/member/loginImple.do\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- 일반회원, 트레이너 체크버튼 -->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-md-6 offset-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"wrapper\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle_radio\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" class=\"toggle_option\" id=\"first_toggle\"\tname=\"account\" value=\"member\"checked> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"radio\" class=\"toggle_option\" id=\"second_toggle\" name=\"account\" value=\"trainer\"> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t <label for=\"first_toggle\"><p>Member</p></label> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<label for=\"second_toggle\"><p>Trainer</p></label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"toggle_option_slider\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"email\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tclass=\"col-md-4 col-form-label text-md-right\">E-Mail\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tAddress</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-md-6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"email\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tname=\"email\" required autofocus>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label for=\"password\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tclass=\"col-md-4 col-form-label text-md-right\">Password</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-md-6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input type=\"password\" id=\"password\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\tname=\"password\" required>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"form-group row\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"col-md-6 offset-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"checkbox\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label> <input type=\"checkbox\" name=\"remember\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t아이디 저장하기\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-md-6 offset-md-4\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button type=\"button\" id=\"signUp\" class=\"btn btn-primary\">로그인</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"");
      out.print(request.getContextPath());
      out.write("/member/find_pw_form.do\" class=\"btn btn-link\"> 비밀번호 찾기 </a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t</main>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\t$('#signUp').click(function(){\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif($.trim($('#email').val()) == ''){\r\n");
      out.write("\t\t\t\talert(\"이메일을 입력해주세요.\");\r\n");
      out.write("\t\t\t\t$('#email').focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}else if($.trim($('#password').val()) == ''){\r\n");
      out.write("\t\t\t\talert(\"패스워드를 입력해주세요.\");\r\n");
      out.write("\t\t\t\t$('#password').focus();\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}else{\r\n");
      out.write("\t\t\t\t$('#signFrm').submit();\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}