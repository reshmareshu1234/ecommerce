import smtplib
from email.message import EmailMessage
def send_mail(to,body,subject):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('reshmavuyyuru08@gmail.com','vkeu ewdy cmxw oahl')
    msg=EmailMessage()
    msg['From']='reshmavuyyuru08@gmail.com'
    msg['To']=to
    msg['Subject']=subject
    msg.set_content(body)
    server.send_message(msg)
    server.close()