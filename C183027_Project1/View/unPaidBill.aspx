<%@ Page Title="Un-Paid Bill" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="unPaidBill.aspx.cs" Inherits="C183027_Project1.unPaidBill" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <h2 style="text-align:center;"><%: Title %></h2>
            <div id="testDiv"><br />
                 <asp:Panel ID="Panel3" runat="server" Height="710px" style="margin-left: 8px" Width="710px"><br />
                     <fieldset>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label2" runat="server" Text="From Date" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="fromDateInput" runat="server" type="date" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <br />
                         <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label3" runat="server" Text="To Date" Font-Bold="True" Font-Size="Medium"></asp:Label>
                
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <input id="toDateInput" runat="server" type="date" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <br />
                         <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Button ID="showButton" runat="server" Text="SHOW" Width="100px" OnClick="showButton_Click"/>
                        <br />
                          <br/>
                        <br/>
                        <asp:GridView ID="unpaidBillReportGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
                            <Columns>
                                <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" DataField="BillNo" HeaderText="Bill No"/>
                                <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Name" HeaderText="Patient Name"/>
                                <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="MobileNo" HeaderText="Mobile No"/>
                                <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="BillAmount" HeaderText="Bill Amount"/>
                            </Columns>
                        </asp:GridView>
                        <br/>
                        <br/>
                        <asp:Button ID="pdfButton" runat="server" Text="PDF" Width="100px" OnClick="pdfButton_Click" />
                        <br />
                         <br />
                            <asp:Label ID="Label6" runat="server" Text="Total" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="totalInput" CssClass="textBox"  ReadOnly="True" runat="server" type="number" />
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

