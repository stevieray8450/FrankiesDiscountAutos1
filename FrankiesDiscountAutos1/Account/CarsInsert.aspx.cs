using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Azure; // Namespace for CloudConfigurationManager
using Microsoft.WindowsAzure.Storage; // Namespace for CloudStorageAccount
using Microsoft.WindowsAzure.Storage.Blob; // Namespace for Blob storage types

namespace FrankiesDiscountAutos1
{
    public partial class CarsInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void DetailView_ItemCommand(object sender,
        //DetailsViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Cancel")
        //    {
        //        Response.Redirect("~/Cars.aspx");
        //    }
        //}
    }
}