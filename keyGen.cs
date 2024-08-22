using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Dist_Cloud
{

    public class keyGen
    {
        int rn;
        public keyGen()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int NodeNO()
        {
            Random val = new Random();

            int randomnumber = val.Next(1, 4);

            return randomnumber;

        }
        public string RNodeNO()
        {
            int n1, n2, n3;
            n1 = NodeNO();

            while (true)
            {
                int t = NodeNO();

                if (n1 != t)
                {
                    n2 = t;
                    break;
                }
            }
            while (true)
            {
                int t = NodeNO();
                if (n1 != t && n2 != t)
                {
                    n3 = t;
                    break;
                }
            }

            return "" + n1 + "" + n2 + "" + n3;

        }
        
        public int RNO()
        {
            Random val = new Random();

            int randomnumber = val.Next(1000, 2000);

            return randomnumber;

        }
        public string createKey(string fn, string ln)
        {
            string key = "";

            string ra;

            int t = 10;

            while (true)
            {
                t = RNO();
                if (t % 2 != 0)
                {
                    ra = Convert.ToString(t);
                    break;
                }
            }

            key = fn + ln + ra;


            return key;
        }
        public string createPKey(string dob, string skey)
        {
            string key = "";

            int r = RNO();

            int l = skey.Length;

            string tskey = skey.Substring(l - 4);

            int p = Convert.ToInt32(tskey);

            int q = Convert.ToInt32(dob);

            int fk = r * p * q;

            key = fk.ToString();

            return key;
        }
    }

}