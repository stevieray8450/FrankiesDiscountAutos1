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
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void Button1_Click(object sender, EventArgs e)
        {
            CloudStorageAccount storageAccount = CloudStorageAccount.Parse(
            CloudConfigurationManager.GetSetting("StorageConnectionString"));

            CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();

            CloudBlobContainer container = blobClient.GetContainerReference("carimages");
            container.CreateIfNotExists();
            container.SetPermissions(
                 new BlobContainerPermissions { PublicAccess = BlobContainerPublicAccessType.Blob });

            CloudBlockBlob blockBlob = container.GetBlockBlobReference("headerImageBlob");
            blockBlob.Properties.ContentType = "image/jpg";
            await blockBlob.UploadFromFileAsync(@"headerImage.jpg");

            //using (var fileStream = System.IO.File.OpenRead(@"headerImage.jpg"))
            //{
            //    blockBlob.UploadFromStream(fileStream);
            //}
        }
    }
}