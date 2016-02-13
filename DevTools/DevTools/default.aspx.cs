using System;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI.HtmlControls;

namespace DevTools
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void OnClick(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtString.Text))
            {
                switch (radType.SelectedValue)
                {
                    case "2":
                        lblResult.Text = CalculateSHA1Hash(txtString.Text.Trim());
                        lblHasType.Text = "SHA1";
                        spnResult.Visible = true;
                        break;
                    case "3":
                        lblResult.Text = CalculateSHA256Hash(txtString.Text.Trim());
                        lblHasType.Text = "SHA-256";
                        spnResult.Visible = true;
                        break;
                    case "4":
                        lblResult.Text = CalculateSHA512hash(txtString.Text.Trim());
                        lblHasType.Text = "SHA-512";
                        spnResult.Visible = true;
                        break;
                    default:
                        lblResult.Text = CalculateMD5Hash(txtString.Text.Trim());
                        spnResult.Visible = true;
                        lblHasType.Text = "MD5"; 
                        break;
                }
            }
        }

        public string CalculateMD5Hash(string input)
        {
            // step 1, calculate MD5 hash from input
            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);

            // step 2, convert byte array to hex string
            var sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }

        public string CalculateSHA1Hash(string input)
        {
            using (var sha1 = new SHA1Managed())
            {
                var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sb = new StringBuilder(hash.Length * 2);

                foreach (byte b in hash)
                {
                    // can be "x2" if you want lowercase
                    sb.Append(b.ToString("X2"));
                }

                return sb.ToString();
            }
        }

        public string CalculateSHA256Hash(string input)
        {
            using (var sha256 = new SHA256Managed())
            {
                var hash = sha256.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sb = new StringBuilder(hash.Length * 2);

                foreach (byte b in hash)
                {
                    // can be "x2" if you want lowercase
                    sb.Append(b.ToString("X2"));
                }

                return sb.ToString();
            }
        }


        public string CalculateSHA512hash(string input)
        {
            using (var sha512 = new SHA512Managed())
            {
                var hash = sha512.ComputeHash(Encoding.UTF8.GetBytes(input));
                var sb = new StringBuilder(hash.Length * 2);

                foreach (byte b in hash)
                {
                    // can be "x2" if you want lowercase
                    sb.Append(b.ToString("X2"));
                }

                return sb.ToString();
            }
        }
    }
}