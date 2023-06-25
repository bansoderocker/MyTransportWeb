using MyTransport.Model;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyTransport
{
    public partial class BillDetails : System.Web.UI.Page
    {
        List<BillDetailsModel> BillDetailsList = new List<BillDetailsModel>();
        protected void Page_Load(object sender, EventArgs e)
        {
            getBillDetails();

            BillDetailsGridView.DataSource = BillDetailsList;
            BillDetailsGridView.DataBind();


        }

        private void getBillDetails()
        {

            BillDetailsModel billDetails = new BillDetailsModel();
            billDetails.Id = 1;
            billDetails.Id = 1;#if
            billDetails.Name = "Pankati";
            BillDetailsList.Add(billDetails);

             var client = new RestClient("https://script.google.com/macros/s/AKfycbzcH1vMymCjpbGaa_onUsFEj4LdxyFKPOJKco3LWqd4Kp18zXV3LiRfgDYbZDGHynAH/exec");
            // client.Timeout = -1;
             var request = new RestRequest();
            // IRestResponse response = client.Execute(request);
            // Console.WriteLine(response.Content);

            var respose = client.Get(request);

            BillDetailsList = JsonSerializer.Deserialize<List<BillDetailsModel>>(respose.Content);

        }
    }
}