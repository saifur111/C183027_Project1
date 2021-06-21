<%@ Page Title="Type Wise Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="typeWiseReport.aspx.cs" Inherits="C183027_Project1.typeWiseReport" %>

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

                         <asp:Button ID="showButton" runat="server" Text="SHOW" Width="100px" OnClick="showButton_Click" />
                        <br/>
                        <br/>
                        <asp:GridView ID="typeWiseReportGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
                            <Columns>
                                <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField ItemStyle-Width="150px" DataField="TestType" HeaderText="Test Type"/>
                                <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="NoOfTest" HeaderText="No Of Test"/>
                                <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="TotalAmount" HeaderText="Total Amount"/>
                               </Columns>
                        </asp:GridView>
                        <br/>
                        <br/>
                          <asp:Button ID="pdfButton" runat="server" Text="PDF" Width="100px" OnClick="pdfButton_Click"/>
                        <br />
                         <br />
                            <asp:Label ID="Label6" runat="server" Text="Total" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="totalInput" runat="server" type="number" ReadOnly="True"/>
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

