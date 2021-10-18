using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL_KhachSan;

namespace DAL_KhachSan
{
    public class TableDAO
    {
        private static TableDAO instance;

        public static TableDAO Instance
        {
            get { if (instance == null) instance = new TableDAO(); return TableDAO.instance; }
            private set { TableDAO.instance = value; }
        }
        private TableDAO() { }
        public static int TableWidth = 80;
        public static int TableHeight = 80;
        public List<Table> loadtablelist()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }

        
       
    }
}
