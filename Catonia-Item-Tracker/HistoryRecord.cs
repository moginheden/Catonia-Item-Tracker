using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class HistoryRecord : ICloneable
    {
        public DateTime dateTime = DateTime.Now;
        public InventoryItem ii = null;
        public int qtyChanged = 0;
        public string note = "";

        /// <summary>
        /// makes a copy of this instance, uses a clone of InverntoryItem, that uses the original Item Instnace
        /// </summary>
        /// <returns></returns>
        public object Clone()
        {
            HistoryRecord newHR = new HistoryRecord();

            newHR.dateTime = this.dateTime;
            newHR.ii = (InventoryItem)this.ii.Clone();
            newHR.qtyChanged = this.qtyChanged;
            newHR.note = (string)this.note.Clone();

            return newHR;
        }
    }
}
