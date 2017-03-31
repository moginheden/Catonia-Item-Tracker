using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class LootItemQty
    {
        public LootItem item = null;
        public int qty = 0;

        public override bool Equals(object a)
        {
            return this.item.id.Equals(((LootItemQty)a).item.id);
        }

        public override int GetHashCode()
        {
            return this.item.id;
        }
    }
}
