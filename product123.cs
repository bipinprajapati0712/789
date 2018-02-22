using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductBO
{
    public class Product123
    {
        string pname;
        double up;
        int tna;
        string cat;
        string desc;
        public string Pname
        {
            get
            {
                return pname;
            }

            set
            {
                pname = value;
            }
        }
        public double Up
        {
            get
            {
                return up;
            }

            set
            {
                up = value;
            }
        }

        public int Tna
        {
            get
            {
                return tna;
            }

            set
            {
                tna = value;
            }
        }

        public string Cat
        {
            get
            {
                return cat;
            }

            set
            {
                cat = value;
            }
        }

        public string Desc
        {
            get
            {
                return desc;
            }

            set
            {
                desc = value;
            }
        }

        public Product123(string pname, double up, int tna, string cat, string desc)
        {
            this.Pname = pname;
            this.Up = up;
            this.Tna = tna;
            this.Cat = cat;
            this.Desc = desc;
        }
    }
}
