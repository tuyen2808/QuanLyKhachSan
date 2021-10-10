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
        public List<Table> loadtablelist1()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE01");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
        public List<Table> loadtablelist2()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE02");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
        public List<Table> loadtablelist3()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE03");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
        public List<Table> loadtablelist4()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE04");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
        public List<Table> loadtablelist5()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE05");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
        public List<Table> loadtablelist6()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE06");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
        public List<Table> loadtablelist7()
        {
            List<Table> tablelist = new List<Table>();
            DataTable data = Dataprovider.Instance.ExcuteQuery("TAO_TABLE07");
            foreach (DataRow item in data.Rows)
            {
                Table table = new Table(item);
                tablelist.Add(table);
            }
            return tablelist;
        }
    }
}
