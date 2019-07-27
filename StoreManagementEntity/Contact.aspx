<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StoreManagementEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
    
     <div class="jumbotron">
       
       <img src="pic/inventory.png" style="height:300px;width:100%;"/>
    </div>


    
    <div class="container">
        <div class="row">
            <div class="col-md-6">

                <h1>Contact Us</h1><br />
                <br/>
                <div class="form-group">
                    <label for="pwd">Name</label>
                    <asp:TextBox ID="Name" Class="form-control"  runat="server"></asp:TextBox>
                </div>

                
                <div class="form-group">
                      <label for="usr">Email</label>
                    <asp:TextBox ID="Email"  Class="form-control" runat="server"></asp:TextBox>
                 </div>
                
                
                <div class="form-group">
                    <label for="pwd">Message</label>
                    <br />
                    <textarea id="msg" cols="50" rows="5" runat="server"></textarea>
                </div>






                <div class="form-group">
                    <asp:Button ID="Send" runat="server" Text="Send Message"  class="btn btn-danger" OnClick="Send_Click" />
                        
                </div>
                <h1 id="data" runat="server"> </h1>
            </div>
            <div class="col-md-6">
                <img src="pic/a8.jpg" class="sideImage"/>
            </div>


        </div>


    </div>





</asp:Content>
