using System;
using Core.seo;
namespace DevTools.seo.sitemap
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void OnClick(object sender, EventArgs e)
        {
            var dateTime = new DateTime?();

            switch (drpDate.SelectedValue)
            {
                case "1":
                    dateTime = DateTime.Now;
                    break;
                default:
                    dateTime = null;
                    break;
            }

            var url = new Url()
            {
                Loc = txtUrl.Text.Trim(),
                 // Priority = "1",
                LastModifiedDateTime = dateTime ?? null,
                ChangeFreq = lstFreq.SelectedValue == "1" ? "" : lstFreq.SelectedValue.ToLower()
            };


            //This can be repeated to get all the flippen urls
            var siteMap = new Core.seo.Sitemap();
            siteMap.Add(url);

            var result = siteMap.CompleteXml();

            if (!string.IsNullOrEmpty(result))
            {
                divInsturctions.Visible = true;
                spnResult.Visible = true;
                litResult.Text = Server.HtmlEncode(result);
            }
            
        }
    }
}