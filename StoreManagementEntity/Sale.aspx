<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="StoreManagementEntity.Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <style>
        #ok {
        background-color:black;
        width:100%;
        }
      #ok  ul li {
            border:1px solid white;
            height:50px;
            width:auto;
            list-style:none;
            font-size:20px;
            color:white;padding:10px;
            margin:20px;
            display:inline-table;
        }
        #ok ul li a {
            color:white;
        }
    </style>

     <div class="container">
        <div class="row">
            <div class="col-md-6" id="ok">
               
                <ul>
                    <li><a href="Purchase.aspx">Purchase Add</a> </li>
                    <li><a href="Sale.aspx">Sale Add</a> </li>
                    <li><a href="PurchaseDetails.aspx">Purchase Details</a> </li>
                    <li><a href="StockDetails.aspx">Sale Details</a> </li>
                    <li><a href="QueryDetails.aspx">Query Details</a> </li>
                </ul>
                
            </div>
            </div>
         </div>  
     <div class="jumbotron">
       
       <img src="pic/inventory.png" style="height:300px;width:100%;"/>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <h1>Sale Record </h1><br />
                <br/>
                <div class="form-group">
                    <label for="pwd">Company</label>
                    <asp:TextBox ID="PrdctCompany" Class="form-control"  runat="server"></asp:TextBox>
                </div>

                
                <div class="form-group">
                      <label for="usr">Product Name:</label>
                    <asp:TextBox ID="PrdctName"  Class="form-control" runat="server"></asp:TextBox>
                 </div>
                <div class="form-group">
                    <label for="pwd">Quantity:</label>
                    <asp:TextBox ID="PrdctQty" Class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="pwd">price:</label>
                    <asp:TextBox ID="PrdctPrice" Class="form-control"  runat="server"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label for="pwd">Date</label>
                    <asp:TextBox ID="ProdctDate" Class="form-control"  runat="server"></asp:TextBox>
                </div>






                <div class="form-group">
                    <asp:Button ID="order" runat="server" Text="Sale Order"  class="btn btn-danger" OnClick="order_Click" />
                        
                </div>
                <h1 id="data" runat="server"> </h1>
            </div>
            <div class="col-md-6">
                <img src="pic/a6.jpg" class="sideImage"/>
            </div>


        </div>


    </div>




</asp:Content>
