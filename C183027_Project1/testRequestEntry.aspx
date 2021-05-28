<%@ Page Title="Test Request Entry" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="testRequestEntry.aspx.cs" Inherits="C183027_Project1.testRequestEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
             <h2 style="text-align:center;"><%: Title %></h2>
            <div id="testDiv"><br />
                 <asp:Panel ID="Panel3" runat="server" Height="710px" style="margin-left: 8px" Width="710px"><br />
                     <fieldset>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label2" runat="server" Text="Name Of The Patient" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="patientNameInput" runat="server" type="text" />
                          <br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label1" runat="server" Text="Date Of Birth" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="dateOfbirthInput" runat="server" type="date" />
                          <br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label5" runat="server" Text="Mobile Number" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="phoneInput" runat="server" type="number" />
                          <br />
                         <br />
                         <asp:Label ID="Label4" runat="server" Text="Select Test" Font-Bold="True" Font-Size="Medium"></asp:Label>
                         
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:DropDownList ID="selectTesk" runat="server"></asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                         <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label3" runat="server" Text="Fee" Font-Bold="True" Font-Size="Medium"></asp:Label>
                
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <input id="feeInput" runat="server" type="number" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <br />
                         <br />

                         <asp:Button ID="addButton" runat="server" Text="ADD" Width="100px" />
                        <br />
                         <Table ID="Table1" class="table table-dark" Height="400px" Width="690px">
                            <thead>
                                <tr>
                                    <th>SL.</th>
                                    <th>Test</th>s
                                    <th>Fee</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Blood</td>
                                    <td>200tk</td>
                                </tr>
                            </tbody>
                         </Table>
                          <br />
                         <br />
                            <asp:Label ID="Label6" runat="server" Text="Total" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="totalInput" runat="server" type="number" />
                          <br />
                         <br />
                          <asp:Button ID="saveButton" runat="server" Text="SAVE" Width="100px" />
                        <br />
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

