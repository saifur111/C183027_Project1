<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="C183027_Project1.payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <h2 style="text-align:center;"><%: Title %></h2>

            <fieldset>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label2" runat="server" Text="Bill No" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="billNoInput" runat="server" type="text" />
                          <br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                         <asp:Label ID="Label5" runat="server" Text="Mobile Number" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="mobileNoInput" runat="server" type="number" />
                         <br />
                         <br />
                          <asp:Button ID="searchButton" runat="server" Text="SEARCH" Width="100px" />
                        <br />
                          <br />
                         <br />
                         <asp:Label ID="Label4" runat="server" Text="Amount" Font-Bold="True" Font-Size="Medium"></asp:Label>
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <input id="amountInput" runat="server" type="number" />
                         <br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label1" runat="server" Text="Due Date" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="dueDateInput" runat="server" type="date" />
                          <br />
                         <br />
           
                          <asp:Button ID="payButton" runat="server" Text="PAY" Width="100px" />
                        <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </fieldset><br />
                <asp:Panel ID="Panel4" runat="server" Height="710px" Width="710px">
                    <br />
                    <br />
                </asp:Panel>
            
        </div>
</asp:Content>



