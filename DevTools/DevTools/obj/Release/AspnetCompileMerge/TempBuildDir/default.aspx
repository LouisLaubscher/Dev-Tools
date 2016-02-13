<%@ Page Title="MD5 Hash Generator" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DevTools._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div>
       <h1>MD5 Hash Generator</h1>
       <br />
       <p>
          <label> Add your string into the textbox below and hit the button to convert it to a MD5 string.</label>
       </p>
       
           <asp:TextBox runat="server" ID="txtString" CssClass="form-control visible-lg-inline" />
           &nbsp;&nbsp;
           <asp:Button Text="Convert" runat="server" CssClass="btn btn-primary" OnClick="OnClick" />
          <asp:RequiredFieldValidator runat="server" CssClass="label label-danger" ID="reqValid" ControlToValidate="txtString" Display="Dynamic" ErrorMessage="You forgot to add a string..."></asp:RequiredFieldValidator>
           <br />
           <br />
         <span id="spnResult" runat="server" Visible="False"> 
        <h3>MD5 Hash: <asp:Label runat="server" ID="lblResult" CssClass="label label-info label_output" ></asp:Label></h3><%--<button type="button" id="btnCopy"></button>--%>
       </span>
   </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentFooterScript">
<%--    <script>
        $(document).ready(function () {
            $('#btnCopy').click(function() {
                var txt = $('.label_output').text();
                window.clipboardData.setData("Text", txt);
                if (!txt) {
                    alert("Nothing to Copy");
                }
                else {
                    alert("Copy to ClipBoard Successful!");
                }
            });
        });
    </script>--%>
</asp:Content>
