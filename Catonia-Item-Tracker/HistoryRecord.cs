using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Catonia_Item_Tracker
{
    public class HistoryRecord
    {
        public DateTime dateTime = DateTime.Now;
        public LootItemQty liq = null;
        public int qtyChanged = 0;
        public string note = "";
    }
}
