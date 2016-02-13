<%@ Page Title="Image compressor" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DevTools.images.compressor._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="Image compressor, Dev Tools, Devtools, Devtools.co.za, Image file size compressor, image compressor tool, Devtools image size compressor, Dev tools images, free image file compressor"/>
    <meta name="description" content="Devtools.co.za Image file compressor allows you to upload images and we will compress the file size. Oh yes, it's free to use."/>
    <meta name="robots" content="nofollow" />
    <script type="text/javascript" src="/Scripts/dropzone.js"></script>
    <link rel="stylesheet" href="~/Content/dropzone.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content_div">
        <h1>Image file size compressor</h1>
        <br />
        <p>
            <label>Upload your image and we will compress the files size for you.</label>
        </p>
        <div class="fallback" id="pictureUpload">
            <input name="file" type="file" multiple />
        </div>
    </div>
    <br />
    <br />
    <div class="hero">
        <label>Image File Compressor:</label>
        <p>
            You need to send that very important image to someone via email, but it keeps on returning because the file size is too big. Or you simply want to maximise those few precious gigs of 
            cloud storage you have.
            <br />
            <br />
            Well, don't fret. Simply upload your image here and we will compress the file size for you. EASY!
        </p>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooterScript" runat="server">
    <script>
       
        
            $("div#pictureUpload").dropzone({ url: "/file/post" });
        
    </script>
</asp:Content>
