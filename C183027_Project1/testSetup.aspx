<%@ Page Title="Test Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testSetup.aspx.cs" Inherits="C183027_Project1.testSetup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <h2 style="text-align:center;"><%: Title %></h2>
            <div id="testDiv"><br />
                 <asp:Panel ID="Panel3" runat="server" Height="710px" style="margin-left: 8px" Width="710px"><br />
                     <fieldset>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label2" runat="server" Text="Test Name" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="typeNameInput" runat="server" type="text" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <br />
                         <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label3" runat="server" Text="Fee" Font-Bold="True" Font-Size="Medium"></asp:Label>
                
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <input id="feeInput" runat="server" type="text" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <br />
                         <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label4" runat="server" Text="Test Type" Font-Bold="True" Font-Size="Medium"></asp:Label>

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                         &nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Button ID="testValueButton" runat="server" Text="SAVE" Width="100px" />
                        <br />
                         <Table ID="Table1" class="table table-dark" Height="400px" Width="690px">
                            <thead>
                                <tr>
                                    <th>SL.</th>
                                    <th>Test Name</th>s
                                    <th>Fee</th>
                                    <th>Type Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Blood</td>
                                    <td>200tk</td>
                                    <td>Blood Test</td>
                                </tr>
                            </tbody>
                         </Table>
                    </fieldset><br />
                </asp:Panel>

                <br />
                <br />
                <asp:Panel ID="Panel4" runat="server" Height="710px" Width="710px">
                    <br />
                    <br />
                </asp:Panel>
            </div>
        </div>
</asp:Content>
