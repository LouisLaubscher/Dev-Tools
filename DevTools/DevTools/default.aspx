<%@ Page Title="Hash Generator" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="DevTools._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="keywords" content="Home, Dev Tools, Devtools, Devtools.co.za, MD5 Hasher, MD5, MD5 Tool, MD5 Hash Tool,  SHA1, SHA-256, SHA1 Hashing, SHA-256 Hashing, SHA1 Hashing Tool, SHA-256 Hashing Tool"/>
    <meta name="description" content="Devtools.co.za MD5, SHA1 and SHA-256 Hashing tool and it's free to use."/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="content_div">
        <h1>Hash Generator</h1>
        <br />
        <p>
            <label>Add your text into the box below and hit the button to convert it to your chosen hash.</label>
        </p>
        <div class="pull-left" style="padding-right: 50px">
            <asp:RadioButtonList runat="server" ID="radType">
                <asp:ListItem Value="1" Selected="True"> MD5</asp:ListItem>
                <asp:ListItem Value="2"> SHA1</asp:ListItem>
                <asp:ListItem Value="3"> SHA-256</asp:ListItem>
                <asp:ListItem Value="4"> SHA-512</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
        
        <div class="input-group" style="display: inline-flex; top: 18px; width: 70%">
            <asp:TextBox runat="server" ID="txtString" CssClass="form-control" />
            <span class="input-group-btn">
                <asp:Button Text="Convert" runat="server" CssClass="btn btn-primary" OnClick="OnClick" />
            </span>
        </div>
        <asp:RequiredFieldValidator runat="server" CssClass="label label-danger" ID="reqValid" ControlToValidate="txtString" Display="Dynamic" ErrorMessage="You forgot to add a string..."></asp:RequiredFieldValidator>
        
   </div>
    <br />
    <div id="spnResult" runat="server" visible="False" class="result">
    <h3>
        <asp:Label runat="server" ID="lblHasType"></asp:Label>
        Hash:
        <asp:Label runat="server" ID="lblResult" CssClass="label label-info label_output"></asp:Label></h3>
            
</div>
    <br />
   <%-- <div class="text-center">
     <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
        <!-- Home_MD5 -->
        <ins class="adsbygoogle"
             style="display:inline-block;width:728px;height:90px"
             data-ad-client="ca-pub-5496245042356257"
             data-ad-slot="7827441924"></ins>
        <script>
        (adsbygoogle = window.adsbygoogle || []).push({});
        </script>
    </div>--%>
    <br />
    <div class="hero">
        <p>
        <label>MD5 HASH:</label>
            <p>The MD5 message-digest algorithm is a widely used cryptographic hash function producing a 128-bit (16-byte) hash value, typically expressed in text format as a 32 digit hexadecimal number. MD5 has been utilized in a wide variety of cryptographic applications, and is also commonly used to verify data integrity.
            </p>
            <p>MD5. (2015, September 7). In Wikipedia, The Free Encyclopedia. Retrieved 15:42, September 7, 2015, from <a href="https://en.wikipedia.org/w/index.php?title=MD5&oldid=679869305">https://en.wikipedia.org/w/index.php?title=MD5&oldid=679869305</a>
            </p>
        </p>
        <hr/>
        <p><label>SHA1 HASH:</label>
            <p>In cryptography, SHA-1 is a cryptographic hash function designed by the United States National Security Agency and is a U.S. Federal Information Processing Standard published by the United States NIST.[2]
                </p>
             <p>SHA-1 produces a 160-bit (20-byte) hash value known as a message digest. A SHA-1 hash value is typically rendered as a hexadecimal number, 40 digits long.
                 </p>
            <p>SHA stands for "secure hash algorithm". The four SHA algorithms are structured differently and are named SHA-0, SHA-1, SHA-2, and SHA-3. SHA-0 is the original version of the 160-bit hash function published in 1993 under the name "SHA": it was not adopted by many applications. Published in 1995, SHA-1 is very similar to SHA-0, but alters the original SHA hash specification to correct alleged weaknesses. SHA-2, published in 2001, is significantly different from the SHA-1 hash function. SHA-1 is the most widely used of the existing SHA hash functions, and is employed in several widely used applications and protocols.
                </p>
            <p>
                SHA-1. (2015, August 29). In Wikipedia, The Free Encyclopedia. Retrieved 15:42, September 7, 2015, from <a href="https://en.wikipedia.org/w/index.php?title=SHA-1&oldid=678467509">https://en.wikipedia.org/w/index.php?title=SHA-1&oldid=678467509</a>
            </p>
        </p>
        <hr/>
        <p><label>SHA-256 HASH:</label>
            <br />
            <p>SHA-2 is a set of cryptographic hash functions designed by the NSA (U.S. National Security Agency).[3] SHA stands for Secure Hash Algorithm. Cryptographic hash functions are mathematical operations run on digital data; by comparing the computed "hash" (the output from execution of the algorithm) to a known and expected hash value, a person can determine the data's integrity. For example, computing the hash of a downloaded file and comparing the result to a previously published hash result can show whether the download has been modified or tampered with.[4] A key aspect of cryptographic hash functions is their collision resistance: nobody should be able to find two different input values that result in the same hash output.
            </p>
            <p>SHA-2 includes significant changes from its predecessor, SHA-1. The SHA-2 family consists of six hash functions with digests (hash values) that are 224, 256, 384 or 512 bits: SHA-224, SHA-256, SHA-384, SHA-512, SHA-512/224, SHA-512/256.
            </p>
            <p>
                SHA-2. (2015, September 7). In Wikipedia, The Free Encyclopedia. Retrieved 15:40, September 7, 2015, from <a href="https://en.wikipedia.org/w/index.php?title=SHA-2&oldid=679853395">https://en.wikipedia.org/w/index.php?title=SHA-2&oldid=679853395</a>
            </p>
        </p>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentFooterScript">
    
</asp:Content>
