using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SO56354683 {
    public partial class WebForm1 : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e)
        {
            ASPxGridView1.DataSource = Data.GetData();
            ASPxGridView1.DataBind();
        }
        public class Data {
            public int ID { get; set; }
            public string SomeData { get; set; }
            public string AnotherData { get; set; }
            public static List<Data> GetData()
            {
                return Enumerable.Range(0, 20).Select(i => new Data() { ID = i, SomeData = "Data " + i, AnotherData = "AnotherData" + i }).ToList<Data>();
            }
        }

        protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridViewCustomCallbackEventArgs e)
        {
            var grid = (ASPxGridView)sender;
            if (!grid.Selection.IsRowSelectedByKey(0))
                grid.Selection.SelectRowByKey(0); //by ID field value
            else
                grid.Selection.UnselectRowByKey(0);
        }
    }
}