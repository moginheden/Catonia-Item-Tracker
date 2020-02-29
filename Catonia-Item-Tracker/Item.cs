using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class Item
    {
        public int id = -1;
        public string name = null;
        public int cost = 0;
        public string description = "";
        public string type = "";
        public string subType = "";

        public override bool Equals(object a)
        {
            if(a is null)
            {
                return false;
            }
            if(!(a is Item))
            {
                return false;
            }
            return this.id.Equals(((Item)a).id);
        }

        public static bool operator ==(Item i1, Item i2)
        {
            if((i1 is null) && (i2 is null))
            {
                return true;
            }
            else if((i1 is null) || (i2 is null))
            {
                return false;
            }
            return i1.Equals(i2);
        }

        public static bool operator !=(Item i1, Item i2)
        {
            if ((i1 is null) && (i2 is null))
            {
                return false;
            }
            else if ((i1 is null) || (i2 is null))
            {
                return true;
            }
            return !i1.Equals(i2);
        }

        public override int GetHashCode()
        {
            return this.id;
        }

        public override string ToString()
        {
            return name;
        }

        public string TypeAbbreviation()
        {
            string returnVal = "";
            string[] typeParts = this.type.Split(new string[] { " - " }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string part in typeParts)
            {
                if (part == "Raw Material")
                {
                    returnVal += 'M';
                }
                else
                {
                    returnVal += part[0];
                }
                
            }

            return returnVal;
        }
    }
}
