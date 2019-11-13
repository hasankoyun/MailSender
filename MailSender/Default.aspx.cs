using System;
using System.Drawing;
using System.Net.Mail;
using System.Web.UI;

namespace MailSender
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void btnGonder_OnClick(object sender, EventArgs e)
        {
            try
            {
                //test mesaj
                lblError.Text = "";
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(txtFromMailAdress.Text);
                mail.To.Add(txtToMail.Text);
                mail.Subject = txtSubject.Text;
                mail.Body = txtBody.Text;
                mail.IsBodyHtml = true;

                SmtpClient SmtpServer = new SmtpClient(txtSmtpClient.Text);
                SmtpServer.Port = int.Parse(txtPort.Text);
                SmtpServer.EnableSsl = ddSsl.SelectedValue == "true" ? true : false;
                SmtpServer.UseDefaultCredentials = ddCredentials.SelectedValue == "true" ? true : false;
                if (ddCredentials.SelectedValue == "true")
                    SmtpServer.Credentials = new System.Net.NetworkCredential(txtCredUser.Text, txtCredPass.Text);
                SmtpServer.Send(mail);
                SmtpServer.Dispose();

                lblError.ForeColor = Color.Green;
                lblError.Text = "Mail Başarıyla Gönderildi.";
            }
            catch (Exception ex)
            {
                lblError.ForeColor = Color.Orange;
                lblError.Text = ex.Message;
            }


        }
    }
}