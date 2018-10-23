<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MailSender._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <div class="jumbotron">
        <h1>MAİL TEST SİSTEMİ</h1>
    </div>

    <div class="row">
        <div class="col-lg-2" style="padding: 3px">
            Smtp Client :
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtSmtpClient" Text="smtp.gmail.com" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            From Mail Adress 
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtFromMailAdress" Text="fromposta@gmail.com" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            To Mail:  
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtToMail" Text="toposta@gmail.com" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            Subject : 
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtSubject" Text="Konu Buraya Yazılacak" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            Body 
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtBody" TextMode="MultiLine" Text="İçerik Buraya Yazılacak" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            SSL : 
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:DropDownList ID="ddSsl" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            Port 
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtPort" Text="587" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            Credentials : 
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:DropDownList ID="ddCredentials" runat="server">
                <asp:ListItem Selected="True">true</asp:ListItem>
                <asp:ListItem>false</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            Cred. User:  
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtCredUser" Text="fromposta@gmail.com" runat="server" Width="100%"></asp:TextBox>
        </div>
        <div class="col-lg-2" style="padding: 3px">
            Cred. Pass:  
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:TextBox ID="txtCredPass" Text="xxxx" runat="server"></asp:TextBox>
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:Button ID="btnGonder" runat="server" Text="Mail Gönder" OnClick="btnGonder_OnClick" Width="100%" />
        </div>
        <div class="col-lg-4" style="padding: 3px">
            <asp:Label ID="lblError" runat="server" ForeColor="OrangeRed" Font-Size="16px"></asp:Label>
        </div>
    </div>

</asp:Content>
