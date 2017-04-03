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

        public override bool Equals(object a)
        {
            return this.id.Equals(((Item)a).id);
        }

        public static bool operator ==(Item i1, Item i2)
        {
            return i1.Equals(i2);
        }

        public static bool operator !=(Item i1, Item i2)
        {
            return !i1.Equals(i2);
        }

        public override int GetHashCode()
        {
            return this.id;
        }
    }
}
