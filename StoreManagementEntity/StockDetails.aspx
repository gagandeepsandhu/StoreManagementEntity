<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StockDetails.aspx.cs" Inherits="StoreManagementEntity.StockDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    
    

       <style>
        th, td {
            border:1px solid grey;
            padding:30px;
            color:black;
        }


    </style>
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
     <h2><%: Title %>.</h2>
     <div class="jumbotron">
       
       <img src="pic/inventory.png" style="height:300px;width:100%;"/>
    </div>


    <div class="container">
        <div class="row">
            <h1>Sale Details </h1>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ProductTextBox" runat="server" Text='<%# Bind("Product") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ProductTextBox" runat="server" Text='<%# Bind("Product") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">id</th>
                                        <th runat="server">Customer</th>
                                        <th runat="server">Product</th>
                                        <th runat="server">Qty</th>
                                        <th runat="server">Price</th>
                                        <th runat="server">Date</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CustomerLabel" runat="server" Text='<%# Eval("Customer") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ProductLabel" runat="server" Text='<%# Eval("Product") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString3 %>" DeleteCommand="DELETE FROM [Sale] WHERE [id] = @id" InsertCommand="INSERT INTO [Sale] ([Customer], [Product], [Qty], [Price], [Date]) VALUES (@Customer, @Product, @Qty, @Price, @Date)" SelectCommand="SELECT * FROM [Sale] ORDER BY [id] DESC" UpdateCommand="UPDATE [Sale] SET [Customer] = @Customer, [Product] = @Product, [Qty] = @Qty, [Price] = @Price, [Date] = @Date WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Customer" Type="String" />
                    <asp:Parameter Name="Product" Type="String" />
                    <asp:Parameter Name="Qty" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="Date" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Customer" Type="String" />
                    <asp:Parameter Name="Product" Type="String" />
                    <asp:Parameter Name="Qty" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>



    </div>


</asp:Content>
