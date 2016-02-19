using System;
using Core.seo;

namespace TestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var scrap = new Scraper();

            var test = scrap.GetGoogleRankings("devtools.co.za", "devtools.co.za", 10);

            foreach (var i in test)
            {
                Console.WriteLine(i);
            }
        }
    }
}
