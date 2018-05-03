/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean.controller;

import java.io.File;
import java.util.List;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */

public class Mailer {

    @Autowired
    JavaMailSender mailer;

    public void send(String from, String to, String subject, String body, String path, String fileName) {
        try {
            MimeMessage mail = mailer.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mail, true, "utf-8");
            helper.setFrom(from, from);
            helper.setTo(to);
            helper.setReplyTo(from, from);
            helper.setSubject(subject);
            helper.setText(body, true);

            helper.addAttachment(fileName, new File(path));
            mailer.send(mail);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    public void send(String from, String to, String subject, String body) {
        try {
            MimeMessage mail = mailer.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mail, true, "utf-8");
            helper.setFrom(from, from);
            helper.setTo(to);
            helper.setReplyTo(from, from);
            helper.setSubject(subject);
            helper.setText(body, true);
            mailer.send(mail);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void send(String from, String[] tolist, String[] cclist, String[] bcclist, String subject, String body, List<File> files) {
        try {
            MimeMessage mail = mailer.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mail, true, "utf-8");
            helper.setFrom(from, from);
            helper.setTo(tolist);
            helper.setCc(cclist);
            helper.setBcc(bcclist);
            helper.setReplyTo(from, from);
            helper.setSubject(subject);
            helper.setText(body, true);
            for (File file : files) {
                FileSystemResource fr = new FileSystemResource(file);
                helper.addAttachment(file.getName(), fr);
            }
            mailer.send(mail);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
