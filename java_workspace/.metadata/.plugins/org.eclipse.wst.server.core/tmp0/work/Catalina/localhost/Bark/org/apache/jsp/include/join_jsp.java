/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.87
 * Generated at: 2024-03-30 18:49:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class join_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1711463953601L));
    _jspx_dependants.put("jar:file:/G:/내%20드라이브/Coding/MultiCampus/Semi-project/github/java_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Bark/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<title>JoinUser</title>\r\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("  \r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/js/join.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/join.css\">\r\n");
      out.write("<style>\r\n");
      out.write("	.red-star{	/* 항목옆의 별 */\r\n");
      out.write("		color:red;\r\n");
      out.write("		font-size: 15px;\r\n");
      out.write("	}\r\n");
      out.write("	#required{	/* \"필수입력사항\" */\r\n");
      out.write("		float: right;\r\n");
      out.write("		margin: 0 0 10px 0;\r\n");
      out.write("	}\r\n");
      out.write("	#user-join-btn{	/* '개인 회원' 버튼 */\r\n");
      out.write("		float: left;\r\n");
      out.write("		color: var(--color-bean-brown);\r\n");
      out.write("  		background-color: var(--color-rose-white);\r\n");
      out.write("  		box-shadow: none;\r\n");
      out.write("		text-align: center;\r\n");
      out.write("		font-size: 20px;\r\n");
      out.write("		font-weight: bold;\r\n");
      out.write("		margin: 0 auto;\r\n");
      out.write("		padding: 0 0 5px 0;\r\n");
      out.write("	}\r\n");
      out.write("	#shelter-join-btn{	/* '보호소 회원' 버튼 */\r\n");
      out.write("		float: right;\r\n");
      out.write("		color: var(--color-bean-brown);\r\n");
      out.write("  		background-color: var(--color-rose-white);\r\n");
      out.write("  		box-shadow: none;\r\n");
      out.write("		text-align: center;\r\n");
      out.write("		font-size: 20px;\r\n");
      out.write("		font-weight: bold;\r\n");
      out.write("		margin: 0 auto;\r\n");
      out.write("		padding: 0 0 5px 0;\r\n");
      out.write("	}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body id=\"join\">\r\n");
      out.write("<script>\r\n");
      out.write("</script>\r\n");
      out.write("        <!-- join -->\r\n");
      out.write("        <div class=\"join-form\">\r\n");
      out.write("            <h1>회원가입</h1>\r\n");
      out.write("            <form action=\"joinProc.jsp\" method=\"post\">\r\n");
      out.write("	            <div class=\"join-select\">\r\n");
      out.write("	            	<button type=\"button\" class=\"btn checked\" id=\"user-join-btn\">개인 회원</button>\r\n");
      out.write("	            	<button type=\"button\" class=\"btn\" id=\"shelter-join-btn\">보호소 회원</button>\r\n");
      out.write("	            </div>\r\n");
      out.write("            	<div>\r\n");
      out.write("            	<p id=\"required\"><span class=\"red-star\">*</span>필수입력사항</p>\r\n");
      out.write("            	</div>\r\n");
      out.write("            	\r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>아이디</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"id\" maxlength=\"20\" required>\r\n");
      out.write("                    <p class=\"check-message\" id=\"checkId\"></p>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>비밀번호</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"password\" class=\"join-input\" name=\"pwd\" maxlength=\"20\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>비밀번호 확인</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"password\" class=\"join-input\" name=\"pwdCheck\" onkeyup=\"checkPwd()\" maxlength=\"20\" required>\r\n");
      out.write("                    <br><br>\r\n");
      out.write("                    <!-- onkeyup : 키를 눌렀다가 땠을 때 이벤트 -->\r\n");
      out.write("                    <p class=\"check-message\" id=\"checkPwd\"></p>    \r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("               \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>이름</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"name\" maxlength=\"20\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>연락처</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"email\" class=\"join-input\" name=\"phone\" maxlength=\"20\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>이메일</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"email\" maxlength=\"20\">\r\n");
      out.write("                </div>   \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>우편번호</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"tel\" maxlength=\"20\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>주소</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"tel\" maxlength=\"20\">\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>세부주소</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"tel\" maxlength=\"20\">\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>은행</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"tel\" maxlength=\"20\">\r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"form-element\">\r\n");
      out.write("                    <span>계좌번호</span><span class=\"red-star\">*</span>\r\n");
      out.write("                    <input type=\"text\" class=\"join-input\" name=\"tel\" maxlength=\"20\">\r\n");
      out.write("                </div> \r\n");
      out.write("            <button type=\"submit\" class=\"btn submit\"><span>가입하기</span></button>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
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

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f0_reused = false;
    try {
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /include/join.jsp(10,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("contextPath");
      // /include/join.jsp(10,0) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setValue(new org.apache.jasper.el.JspValueExpression("/include/join.jsp(10,0) '${pageContext.request.contextPath }'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${pageContext.request.contextPath }",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
      _jspx_th_c_005fset_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
    }
    return false;
  }
}
