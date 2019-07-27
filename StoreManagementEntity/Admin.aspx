<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="StoreManagementEntity.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
     <div class="jumbotron">
       
       <img src="pic/inventory.png" style="height:300px;width:100%;"/>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <h1>Admin Login </h1><br />
                <br/>
                <div class="form-group">
                      <label for="usr">Name:</label>
                    <asp:TextBox ID="UserName"  Class="form-control" runat="server"></asp:TextBox>
                 </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input id="adminPassword" type="password" runat="server" class="form-control"/>
                </div>
                <div class="form-group">
                    <asp:Button ID="login" runat="server" Text="Login"  class="btn btn-danger" OnClick="login_Click"/>
                        
                </div>
                <h1 id="data" runat="server"> </h1>
            </div>
            <div class="col-md-6">
                <img src="pic/a4.png" class="sideImage"/>
            </div>


        </div>


    </div>

</asp:Content>
