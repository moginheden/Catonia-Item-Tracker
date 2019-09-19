using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class InventoryItem : ICloneable
    {
        public int id = int.MinValue;
        public Item item = null;
        public int qty = 0;
        public List<int> modsAttached = new List<int>();

        public override bool Equals(object a)
        {
            if (a is null)
            {
                return false;
            }
            if (!(a is InventoryItem))
            {
                return false;
            }
            //if this item isn't in a proper inventory, compare only the item IDs, (used for recipies.)
            if((this.id == int.MinValue) || (((InventoryItem)a).id == int.MinValue))
            {
                return this.item.Equals(((InventoryItem)a).item);
            }

            //otherwise compare the id in the inventory
            return this.id.Equals(((InventoryItem)a).id);
        }

        public static bool operator ==(InventoryItem i1, InventoryItem i2)
        {
            return i1.Equals(i2);
        }

        public static bool operator !=(InventoryItem i1, InventoryItem i2)
        {
            return !i1.Equals(i2);
        }

        public override int GetHashCode()
        {
            return this.id;
        }

        /// <summary>
        /// makes a copy of this instance, uses a link to the original Item instance
        /// </summary>
        /// <returns></returns>
        public object Clone()
        {
            InventoryItem newII = new InventoryItem
            {
                id = this.id,
                item = this.item,
                qty = this.qty
            };
            newII.modsAttached = new List<int>(this.modsAttached);
            foreach (int i in this.modsAttached)
            {
                newII.modsAttached.Add(i);
            }

            return newII;
        }

        public override string ToString()
        {
            //read mods
            string mods = "";
            foreach (int mod in this.modsAttached)
            {
                mods += " - " + Program.items[mod].name.Split(new string[] { " - " }, StringSplitOptions.RemoveEmptyEntries)[0];
            }
            
            return this.item.ToString() + mods;
        }

        public int value()
        {
            int returnValue = 0;

            foreach(int mod in this.modsAttached)
            {
                returnValue += Program.items[mod].cost;
            }

            //if no mods, use the base item cost
            if (returnValue == 0)
            {
                return item.cost;
            }

            return returnValue;
        }
    }
}
