<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyParty.aspx.cs" Inherits="MyTransport.MyParty" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group">
        <center>
            <h1>Party Page</h1>
            <div class="container py-5 h-100">
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                        <label>Party Name </label>
                    </div>
                    <div class="col-md-3">
                        <input type="text" name="PName" id="PName" placeholder="Enter Party Name" />
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                        <label>Party Contact</label>
                    </div>
                    <div class="col-md-3">
                        <input type="text" name="PContact" id="PContact" placeholder="Enter Party Contact" />
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-3">
                    </div>

                    <div class="col-md-3">
                        <label>Party Email </label>
                    </div>
                    <div class="col-md-3">
                        <input type="text" name="PEmail" id="PEmail" placeholder="Enter Party Email" />
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-3">
                    </div>
                    <div class="col-md-3">
                        <label>Party Address </label>
                    </div>
                    <div class="col-md-3">
                        <input type="text" name="PAddress" id="PAddress" placeholder="Enter Party Address" />
                    </div>
                    <div class="col-md-3">
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-6">

                        <input type="button" value="Search" name="Search" />
                        <input type="button" name="bSaveParty" value="AddParty" id="bSaveParty" />
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
            </div>
        </center>
    </div>
    <%-- <div class="row">
        <div class="col-md-2"></div>
            <div class="col-md-8">
                <table class="table table-striped table-dark">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>

                                id
                            </td>
                            <td>

                                Name
                            </td>
                            <td>

                                Contact
                            </td>
                            <td>

                                Address
                            </td>

                        </tr>
                        @foreach (var p in Model.PartyList)
                        {
                            <tr>
                                <td>
                                    @p.Pid
                                </td>
                                <td>

                                    @p.PName
                                </td>
                                <td>
                                    @p.PContact
                                </td>
                                <td>
                                    @p.PAddress
                                </td>
                            </tr>
                        }

                    </tbody>
                </table>
            </div>

        </div>--%>
    <script type="text/javascript">

        function AddMyParty() {
            alert("Add party click");
        }
        $("#bSaveParty").click(function () {
            //
            var Name = $("#PName").val();
            var Contact = $("#PContact").val();

            var data = { PName: Name , PContact : Contact };
            //PageMethods.AddParty(data , OnSuccess);

            //$.ajax({
            //    type: "POST",
            //    url: "MyParty.aspx/AddParty",
            //    data: data,
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (msg) {
            //        // Do something interesting here.
            //        alert("Add party click " + msg);
            //    }
            //});

           
            jQuery.ajax({
                type: "POST",
                url: "MyParty.aspx/AddParty", //It calls our web method  
                contentType: "application/json; charset=utf-8",
                data: "{'PName':'" + Name + "','PContact' : '" + Contact +"}",
                dataType: "xml",
                success: function (msg) {
                    //$(msg).find("Table").each(function () {
                    //    var username = $(this).find('UserName').text();
                    //    if (username != '') {
                    //        //window.location.replace('/iCalendar.aspx');
                    //        alert('This username already taken..');
                    //        $("#reguser").val('');
                    //        $("#reguser").focus();
                    //    }
                    //    else {
                    //    }
                    //});
                    alert("Add party click "+msg);
                },
                error: function (d) {
                }
            });  

        });
           
     
    </script>

</asp:Content>
