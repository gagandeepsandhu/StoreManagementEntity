<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="workingArea.aspx.cs" Inherits="StoreManagementEntity.workingArea" %>
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
    

</asp:Content>
