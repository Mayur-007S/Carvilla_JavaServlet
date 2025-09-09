package helper;

import java.util.Properties;

import jakarta.activation.DataHandler;
import jakarta.activation.FileDataSource;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeBodyPart;
import jakarta.mail.internet.MimeMessage;
import jakarta.mail.internet.MimeMultipart;

public class GEmailSender {

	public static boolean sendEmail(String to,String subject) {
		boolean flag = false;
		
		String from = "mayurmyana111@gmail.com";
		String host = "smtp.gmail.com";
		
		Properties properties = System.getProperties();
		 	properties.put("mail.smtp.host", host);
	        properties.put("mail.smtp.port", "587"); // Use 587 for TLS
	        properties.put("mail.smtp.starttls.enable", "true"); // Enable TLS
	        properties.put("mail.smtp.auth", "true"); // Enable authentication
		
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(from,"msqz jbfz iuea yjgy");
			}
		});
		
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject);
			
			MimeBodyPart htmlPart = new MimeBodyPart();
            String htmlContent = "<html><body>" +
            		"<form action='carvilla.com/login'>"+
            		"<div style='background-color:black; padding: 20px;>" +
            		"<h1><img src='cid:image1'>CARVILLA</h1>"+
            		"<div style='color:#5d6380'>"+
            		"<p>Hi There,</p>"+
                    "<p>Thank youu for signing up for <br>CARVILLA! We're <br>"
                    + "excited to have you on board.</p><br>" +
                    "<p>With CARVILLA, you<br>can book car easly with<br>"
                    + "filing long and lengthy form<br>book car in minutes</p><br>" +
                    "<p>Login to continue now by clicking the<br>button below to begin book"
                    + "<br>your first car from CARVILLA</p>"+
                    "<Button type='submit' style='border-radius:6px;color:white;background-color:rgb(66, 66, 252); border:none; width:10rem; height:2rem;'>Login</Button>"+
                    "<hr>"+
                    "if you have any feedback or<br>reach out to us at<br>"+
                    "<a href=''>mayurmyana111@gmail.com</a><br><br>"+
                    "</div>"+
                    "</from>"+
                    "</body></html>";
            htmlPart.setContent(htmlContent, "text/html");
            
         // Create the image part
            MimeBodyPart imagePart = new MimeBodyPart();
            FileDataSource fds = new FileDataSource("D:\\mayur111\\FullStackWebDevelopment\\NEW_JAVA2025\\Carvilla2025\\src\\main\\webapp\\assets\\logo\\favicon.png"); // Replace with actual path
            imagePart.setDataHandler(new DataHandler(fds));
            imagePart.setContentID("<image1>");  // Consistent ID is crucial
            imagePart.setDisposition(MimeBodyPart.INLINE);

            // Create a related multi-part.
            MimeMultipart multipart = new MimeMultipart("related");
            multipart.addBodyPart(htmlPart);    // HTML first
            multipart.addBodyPart(imagePart);   // Image second

            // Set the multipart content
            message.setContent(multipart);

            System.out.println("Sending...");
            // Send message
            Transport.send(message);
            System.out.println("Sent message successfully....");
            flag = true;
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
		return flag;
    }
}


