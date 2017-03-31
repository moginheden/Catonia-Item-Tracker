using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class LootItem
    {
        public int id = -1;
        public string name = null;
        public int cost = 0;
        public string description = "";

        public override bool Equals(object a)
        {
            return this.id.Equals(((LootItem)a).id);
        }

        public override int GetHashCode()
        {
            return this.id;
        }
    }
}
