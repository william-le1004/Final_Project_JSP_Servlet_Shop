package com.Model;

import java.util.Date;
import java.util.Iterator;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.DataHandler;
import javax.activation.DataSource;

/**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/22/2023
 */
public class Mail {

      //      password : cntmnkayauaybtpv
//      email : testuserkien321@gmail.com
      static final String from = "testuserkien321@gmail.com";
      static final String pass = "cntmnkayauaybtpv";


      public static boolean sendEmail(String to, String tieuDe, String noiDung) {
            // Properties : khai báo các thuộc tính
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP HOST
            props.put("mail.smtp.port", "587"); // TLS 587 SSL 465
            props.put("mail.smtp.auth", "true");            // xac thuc dang nhap
            props.put("mail.smtp.starttls.enable", "true"); // bat dau tls

            // create Authenticator
            Authenticator auth = new Authenticator() {
                  @Override
                  protected PasswordAuthentication getPasswordAuthentication() {
                        // TODO Auto-generated method stub
                        return new PasswordAuthentication(from, pass);
                  }
            };

            // Phiên làm việc
            Session session = Session.getInstance(props, auth);

            // Tạo một tin nhắn
            MimeMessage msg = new MimeMessage(session);

            try {
                  // Kiểu nội dung
                  msg.addHeader("Content-type", "text/HTML; charset=UTF-8");

                  // Người gửi
                  msg.setFrom(from);

                  // Người nhận
                  msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

                  // Tiêu đề email
                  msg.setSubject(tieuDe);

                  // Quy đinh ngày gửi
                  msg.setSentDate(new Date());

                  // Quy định email nhận phản hồi
                  // msg.setReplyTo(InternetAddress.parse(from, false))

                  // Nội dung
                  msg.setContent(noiDung, "text/HTML; charset=UTF-8");

                  // Gửi email
                  Transport.send(msg);
                  System.out.println("Success");
                  return true;
            } catch (Exception e) {
                  System.out.println("Fail");
                  e.printStackTrace();
                  return false;
            }
      }

      public static void main(String[] args) {
            long upperBound = 99999999;
            long lowerBound = 1000000;

            // upperBound 20 will also be included
            long range = (upperBound - lowerBound) + 1;
            long random = (long)(Math.random() * range) + lowerBound;
            System.out.println(random);
//            Mail.sendEmail("kienle4456@gmail.com", "Order Success", " <div class=\"container text-center\">\n" +
//                    "        <h1>Thank you.</h1>\n" +
//                    "        <p class=\"lead w-lg-50 mx-auto\">Your order has been placed successfully.</p>\n" +
//                    "        <p class=\"w-lg-50 mx-auto\">Your order number is <a href=\"#\">9237427634826</a>. We will immediatelly process your and it will be delivered in 2 - 5 business days.</p>\n" +
//                    "    </div>");
      }

}
