using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Core.seo
{
    public class Scraper
    {
        private const string GoogleSearchUrl = "https://www.google.co.za/search?q={0}&ie=utf-8&oe=utf-8";

        private string DownloadHTML(string searchUrl)
        {
            var client = new WebClient();

            //We set the user agent string to fool Google into thinking we're a browser and not some app scraping...
            client.Headers.Add("user-agent",
                "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1");

            return client.DownloadString(searchUrl).ToLower();

        }

        private static List<string> ParseGooglePageResults(string html)
        {
            if (html.Contains("<cite class=\"_rm"))
            {
                //Remove the first chunk of html
                var cleanHtml = html.Substring(html.IndexOf("<cite class=\"_rm"));

                //Remove the last chunk of html
                cleanHtml = cleanHtml.Substring(0, cleanHtml.IndexOf("<hr class"));

                //We extract and clean the urls in the results
                var listURlList =
                    Regex.Split(cleanHtml, "</cite>")
                        .ToList()
                        .Select(x => x.Substring(x.IndexOf("<cite") + 6).Replace("<b>", "").Replace("</b>", ""));

                //Some junk is left over after the 10th url, some times, so we simply take the first 10 items in the list. PS, can be cleaned up.
                return listURlList.Take(10).ToList();
            }

            return null;
        }

        private static List<string> ParseInternalLinks(string html)
        {
            return null;
        }

        public List<int> GetGoogleRankings(string searchTerm, string companyUrl, int pageCount = 1)
        {
            try
            {
                List<string> cleanResults = new List<string>();

                for (var i = 0; i < pageCount; i++)
                {
                    var result = ParseGooglePageResults(DownloadHTML(string.Format(GoogleSearchUrl, Uri.EscapeUriString(searchTerm))));

                    if(result != null)
                        cleanResults.AddRange(result);
                }

                if (cleanResults.Any())
                {
                    //Return the list of positions that the company URL appears in.
                    var positionResult =
                        Enumerable.Range(0, cleanResults.Count)
                            .Where(i => cleanResults[i].Contains(companyUrl.ToLower()))
                            .ToList();

                    return positionResult;
                }
                else
                {
                    return null;
                }
            }
            catch (WebException ex)
            {
                return null;
            }
        }

        public List<int> GetInternalSitemap(string siteUrl)
        {
            return null;
        }
    }
}
