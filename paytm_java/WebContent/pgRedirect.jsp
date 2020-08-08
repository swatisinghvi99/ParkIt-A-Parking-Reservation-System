<%@ page import="com.paytm.pg.merchant.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Park It - Payment</title>
        <link href="assets/img/car.png" rel="icon">
        <link href="assets/img/car.png" rel="apple-touch-icon">
    </head>
    <body>

        <%!

        public class PaytmConstants{
            public final static String MID="hZlRdj71073124739304";
            public final static String MERCHANT_KEY="x4fr0YyFPVX19z@X";
            public final static String INDUSTRY_TYPE_ID="Retail";
            public final static String CHANNEL_ID="WEB";
            public final static String WEBSITE="WEBSTAGING";
            public final static String PAYTM_URL="https://securegw-stage.paytm.in/order/process";

        } 
%>

<%
        String ord=request.getParameter("ORDER_ID");
        session.setAttribute("ord",ord);
        String cust=request.getParameter("CUST_ID");
        session.setAttribute("cust",cust);

        Enumeration<String> paramNames = request.getParameterNames();
        Map<String, String[]> mapData = request.getParameterMap();
        TreeMap<String,String> parameters = new TreeMap<String,String>();
        String paytmChecksum = "";
        while(paramNames.hasMoreElements()) {
        String paramName = (String)paramNames.nextElement();
        parameters.put(paramName,mapData.get(paramName)[0]);
        }
        parameters.put("MID",PaytmConstants.MID);
        parameters.put("CHANNEL_ID",PaytmConstants.CHANNEL_ID);
        parameters.put("INDUSTRY_TYPE_ID",PaytmConstants.INDUSTRY_TYPE_ID);
        parameters.put("WEBSITE",PaytmConstants.WEBSITE);
        parameters.put("MOBILE_NO","8879217401");
        parameters.put("EMAIL","singhviswati14@gmail.com");
        parameters.put("CALLBACK_URL", "http://localhost:8080/paytm_java/pgResponse.jsp");
        String checkSum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum( PaytmConstants.MERCHANT_KEY,parameters );
        StringBuilder outputHtml = new StringBuilder();

        outputHtml.append("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>");
        outputHtml.append("<html>");
        outputHtml.append("<head>");
        outputHtml.append("<title>Merchant Check Out Page</title>");
        outputHtml.append("</head>");
        outputHtml.append("<body>");
        outputHtml.append("<center><h1>Please do not refresh this page...</h1></center>");
        outputHtml.append("<form method='post' action='"+ PaytmConstants.PAYTM_URL +"' name='f1'>");
        outputHtml.append("<table border='1'>");
        outputHtml.append("<tbody>");
        for(Map.Entry<String,String> entry : parameters.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            outputHtml.append("<input type='hidden' name='"+key+"' value='" +value+"'>");
        }
        outputHtml.append("<input type='hidden' name='CHECKSUMHASH' value='"+checkSum+"'>");
        outputHtml.append("</tbody>");
        outputHtml.append("</table>");
        outputHtml.append("<script type='text/javascript'>");
        outputHtml.append("document.f1.submit();");
        outputHtml.append("</script>");
        outputHtml.append("</form>");
        outputHtml.append("</body>");
        outputHtml.append("</html>");
        out.println(outputHtml);

%>
</body>
</html>