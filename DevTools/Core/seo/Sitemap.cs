using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Xml;

namespace Core.seo
{
    public class Sitemap
    {
        private string _filename;
        private XmlTextWriter _sitemapxml;
        private StringWriter sw;
        //private XmlWriter _sitemaptext;
        private string _xmlns = "http://www.sitemaps.org/schemas/sitemap/0.9";

        public string Xmlns
        {
            get
            {
                return _xmlns;
            }

            set
            {
                _xmlns = value;
            }
        }

        public Sitemap()
        {
            sw = new StringWriter();
            _sitemapxml = new XmlTextWriter(sw);
            _sitemapxml.Formatting = Formatting.Indented;
            _sitemapxml.WriteStartDocument();
            _sitemapxml.WriteStartElement("urlset");
            _sitemapxml.WriteAttributeString("xmlns", _xmlns);
        }

        public void Add(Url _url)
        {
            _sitemapxml.WriteStartElement("url");
            _sitemapxml.WriteElementString("loc", _url.Loc);

            if (_url.LastModifiedString != "")
            {
                _sitemapxml.WriteElementString("lastmod", _url.LastModifiedString);
            }

            if (_url.ChangeFreq != "")
            {
                _sitemapxml.WriteElementString("changefreq", _url.ChangeFreq);
            }

            if (_url.Priority != "")
            {
                _sitemapxml.WriteElementString("priority", _url.Priority);
            }

            _sitemapxml.WriteEndElement();
        }

        public string CompleteXml()
        {
            _sitemapxml.WriteEndElement();
            _sitemapxml.WriteEndDocument();
            return sw.ToString();
        }

        #region CodeForWritingTofile
        //Constructor with textfile
        public Sitemap(string filename)
        {
            this._filename = filename;
            _sitemapxml = new XmlTextWriter(_filename, UTF8Encoding.UTF8);

            _sitemapxml.WriteStartDocument();
            _sitemapxml.WriteStartElement("urlset");
            _sitemapxml.WriteAttributeString("xmlns", _xmlns);
            _sitemapxml.Flush();
        }

        public void AddToFile(Url _url)
        {
            _sitemapxml.WriteStartElement("url");
            _sitemapxml.WriteElementString("loc", _url.Loc);

            if (_url.LastModifiedString != "")
            {
                _sitemapxml.WriteElementString("lastmod", _url.LastModifiedString);
            }

            if (_url.ChangeFreq != "")
            {
                _sitemapxml.WriteElementString("changefreq", _url.ChangeFreq);
            }

            if (_url.Priority != "")
            {
                _sitemapxml.WriteElementString("priority", _url.Priority);
            }

            _sitemapxml.WriteEndElement();
            _sitemapxml.Flush();

        }

        public void WriteToFile()
        {
            _sitemapxml.WriteEndElement();
            _sitemapxml.WriteEndDocument();
            _sitemapxml.Close();
        }
#endregion
    }
}
