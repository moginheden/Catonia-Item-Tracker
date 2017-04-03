using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class ItemQty
    {
        public Item item = null;
        public int qty = 0;

        public override bool Equals(object a)
        {
            return this.item.id.Equals(((ItemQty)a).item.id);
        }

        public static bool operator ==(ItemQty i1, ItemQty i2)
        {
            return i1.Equals(i2);
        }

        public static bool operator !=(ItemQty i1, ItemQty i2)
        {
            return !i1.Equals(i2);
        }

        public override int GetHashCode()
        {
            return this.item.id;
        }
    }
}
