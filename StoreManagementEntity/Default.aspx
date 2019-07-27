<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StoreManagementEntity._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       
       <img src="pic/inventory.png" style="height:300px;width:100%;"/>
    </div>

    <div class="row">
        <div class="col-md-4">
            <img src="pic/a1.jpg" class="thumbnail" style="width:300px;height:200px;"/>

            <h2>Perpetual Inventory System</h2>
            <p>
                
                When you use a perpetual inventory system, it continually updates inventory records and accounts for additions and subtractions when inventory items are received, sold from stock, moved from one location to another, picked from inventory, and scrapped. Some organizations prefer perpetual inventory systems because they deliver up-to-date inventory information and better handle minimal physical inventory counts.
            </p>
            
        </div>
        <div class="col-md-4">
           <img src="pic/a2.png" class="thumbnail" style="width:300px;height:200px;"/>
            <h2>Periodic Inventory System</h2>
            <p>
                Periodic inventory systems do not track inventory on a daily basis; rather, they allow organizations to know the beginning and ending inventory levels during a certain period of time. These types of inventory control systems track inventory using physical inventory counts. When physical inventory is complete, the balance in the purchases account shifts into the inventory account and is adjusted to match the cost of the ending inventory.
            </p>
        </div>

        <div class="col-md-4">
            <img src="pic/a3.png" class="thumbnail" style="width:300px;height:200px;"/>
            <h2>Barcode Inventory Systems</h2>
            <p>
                Inventory management systems using barcode technology are more accurate and efficient than those using manual processes. When used as part of an overall inventory control system, barcode systems update inventory levels automatically when workers scan them with a barcode scanner or mobile device.
            </p>
            
        </div>
    </div>

</asp:Content>
