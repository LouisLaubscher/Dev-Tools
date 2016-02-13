<%@ Page Title="Sitemap Generator" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DevTools.seo.sitemap._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="Sitemap Generator, Dev Tools, Devtools, Devtools.co.za, Sitemap, Sitemap tool, Devtools sitemap generator, Dev tools sitemap, free sitemap generator"/>
    <meta name="description" content="Devtools.co.za Sitemap generator will create a sitemap xml doc for your supplied url."/>
    <meta name="robots" content="nofollow" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_div_seo">
        <h1>Sitemap Generator</h1>
        <br />
        <p>
            <label>Enter the site url below to generate a sitemap. (Only 1 page is supported currently)</label>
        </p>
        <div class="input-group" style="display: inline-flex; top: 18px; width: 70%">
            <asp:TextBox runat="server" ID="txtUrl" CssClass="form-control" />
            <span class="input-group-btn">
                <asp:Button Text="Generate" runat="server" CssClass="btn btn-primary" OnClick="OnClick" />
            </span>            
        </div>     
        <asp:RequiredFieldValidator runat="server" CssClass="label label-danger" ID="reqValid" ControlToValidate="txtUrl" Display="Dynamic" ErrorMessage="You forgot to add a url..."></asp:RequiredFieldValidator>   
        <br /><br />
        <div class="input-group" style="display: inline-flex; top: 18px; width: 70%">
            <span class="span-1"><label>Change Frequency:&nbsp;&nbsp; </label></span>
            <asp:DropDownList runat="server" ID="lstFreq">
                <asp:ListItem Text="None" Value="1"></asp:ListItem>
                    <asp:ListItem Value="always" Text="Always"></asp:ListItem>
                    <asp:ListItem Value="hourly" Text="Hourly"></asp:ListItem>
                    <asp:ListItem Value="daily" Text="Daily"></asp:ListItem>
                    <asp:ListItem Value="weekly" Text="Weekly"></asp:ListItem>
                    <asp:ListItem Value="monthly" Text="Monthly"></asp:ListItem>
                    <asp:ListItem Value="yearly" Text="Yearly"></asp:ListItem>
                    <asp:ListItem Value="never" Text="Never"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <br/><br />
         <div class="input-group" style="display: inline-flex; top: 18px; width: 70%">
           <span class="span-1"> <label>Last Modification:&nbsp;&nbsp; </label></span>
            <asp:DropDownList runat="server" ID="drpDate">
                    <asp:ListItem Value="0" Text="None"></asp:ListItem>
                    <asp:ListItem Value="1" Text="Current Date Time"></asp:ListItem>
                    <%--<asp:ListItem Value="2" Text="Use server's response"></asp:ListItem>--%>
            </asp:DropDownList>
        </div>
        
       <%--   <div class="input-group" style="display: inline-flex; top: 18px; width: 70%">
            <label>Last Modification:&nbsp;&nbsp; </label>
            Add the priority here
        </div>--%>
        <br /><br /><br /><br />
        <div runat="server" ID="divInsturctions" Visible="False">
            <label>Instructions:</label>
            <p>
                Copy the text in the block below, into a <b>"sitemap.xml"</b> file and drop it into the root of your website.
            </p>
        </div>
    </div>
    <br />
    <div id="spnResult" runat="server" visible="False" class="result">
        <asp:Literal runat="server" id="litResult"></asp:Literal>
    </div>
</asp:Content>
