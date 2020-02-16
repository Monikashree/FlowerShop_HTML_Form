using System;
using System.Globalization;


namespace FlowerShop
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bind_month_ddl();
                bind_year_ddl();
            }
        }
        private void bind_year_ddl()
        {
            int year = (System.DateTime.Now.Year);

            for (int intCount = year; intCount <= 2035; intCount++)
            {
                ddlYear.Items.Add(intCount.ToString());
            }
        }
        private void bind_month_ddl()
        {
            for (int i = 1; i <= 12; i++)
            {
                ddlMonth.Items.Add(new System.Web.UI.WebControls.ListItem(DateTimeFormatInfo.CurrentInfo.GetMonthName(i), i.ToString()));
            }
        }
    }
}