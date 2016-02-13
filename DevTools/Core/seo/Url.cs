using System;
using System.Collections.Generic;
using System.Text;

namespace Core.seo
{
    public class Url
    {
        private string _loc;
        private DateTime? _lastmod ;

        private string _changefreq;
        //always
        //hourly
        //daily
        //weekly
        //monthly
        //yearly
        //never

        private string _priority;

        private int _lastmodifiedday;
        private int _lastmodifiedmonth;
        private int _lastmodifiedyear;

        public string Loc
        {
            get
            {
                return _loc;
            }

            set
            {
                _loc = value;
            }
        }

        public DateTime? LastModifiedDateTime
        {
            get
            {
                return _lastmod;
            }

            set
            {
                _lastmod = value;
            }
        }

      
        public string LastModifiedString
        {
            //Readonly Property
            get
            {
                //Get LastModifiedDate
                if (_lastmod != null)
                {
                    DateTime date = (DateTime)_lastmod;

                    this._lastmodifiedday = date.Day;
                    this._lastmodifiedmonth = date.Month;
                    this._lastmodifiedyear = date.Year;
                    return string.Format("{0}-{1}-{2}", _lastmodifiedyear, _lastmodifiedmonth, _lastmodifiedday);
                }

                return null;
            }
        }

        public string ChangeFreq
        {
            get
            {
                return _changefreq;
            }

            set
            {
                _changefreq = value;
            }
        }

        public string Priority
        {
            get
            {
                return _priority;
            }

            set
            {
                _priority = value;
            }
        }

        public Url()
        {
            //Constructor
            _loc = null;
            _changefreq = null;
            _priority = null;
        }

    }
}
