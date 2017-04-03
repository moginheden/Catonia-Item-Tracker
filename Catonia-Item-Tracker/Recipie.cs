using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class Recipie
    {
        public int id = -1;
        public List<ItemQty> ingredients = new List<ItemQty>();
        public Item result;
        public int resultQty = 1;
        public string profession = null;
        public string crafterLevel = null;

        public override bool Equals(object a)
        {
            return this.id.Equals(((Item)a).id);
        }

        public override int GetHashCode()
        {
            return this.id;
        }
    }
}
