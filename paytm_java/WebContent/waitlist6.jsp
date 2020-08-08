<%@ page import="java.util.*,javax.mail.Session,javax.mail.Message"%>
<%@ page import="javax.mail.internet.*,javax.mail.PasswordAuthentication,javax.mail.Authenticator,javax.mail.Transport" %>

<%

    String result;
    final String to = (String)session.getAttribute("email");
    String s = (String)session.getAttribute("ord");
    final String subject = "ParkIt Waitlist Confirmation for "+ s;
    String m = (String)session.getAttribute("p_date")+ " at "+(String)session.getAttribute("p_time")+". We will let you know as soon as there is a vacancy!";		
    final String messg = "This is to confirm that you have been waitlisted for " + m;
    final String from = "parkitservices123@gmail.com";
    final String pass = "parkit@123";
    final String user = "parkitservices123";

    Properties props = new Properties();

    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "465");
    props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
    props.put("mail.smtp.socketFactory.port", "465");
    props.put("mail.smtp.socketFactory.fallback", "false");
   
   	Authenticator auth = new Authenticator() {
        
   	@Override

        protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(user, pass);
		}
    };
    
    Session mailSession = Session.getDefaultInstance(props, auth);
    
    try {
    	
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject(subject);
        message.setText(messg);
	    Transport.send(message);
	    Transport.send(message);
	    result = "<b>Email sent successfully...</b>";
	   } 
    catch (Exception mex) {
	  
	      result = mex.toString();
	   }
	%>

	<html>
	   <head>
	      <title>Confirmation Mail</title>
	   </head>
	   
	   <body>	    
			<script>
                alert("You have been waitlisted successfully!");
				window.location.href = "profile.jsp";
            </script>
	   </body>
	</html>