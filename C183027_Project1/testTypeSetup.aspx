<%@ Page Title="Test Type Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testTypeSetup.aspx.cs" Inherits="C183027_Project1.testTypeSetup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <h2 style="text-align:center;"><%: Title %></h2>
            <div id="testTypeDiv"><br />
                <asp:Panel ID="Panel1" runat="server" Height="115px" style="margin-left: 8px" Width="710px"><br />
                    <fieldset>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Type Name" Font-Bold="True" Font-Size="Medium"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<input id="typeNameInput" runat="server" type="text" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="typeNameSave" runat="server" Text="SAVE" OnClick="typeNameSave_Click" />
                    </fieldset><br />
                </asp:Panel><br />
                <asp:Label ID="view" runat="server" Text=""></asp:Label>
                <asp:Panel ID="Panel2" runat="server" Height="310px" Width="710px">
                    <br />
                    <Table class="table table-dark" ID="Table2"  Height="300px" Width="690px">
                         <thead>
                              <tr>
                                 <th>SL.</th>
                                 <th>Type Name</th>
                              </tr>
                         </thead>
                         <tbody>
                             <%--<% foreach (var item in Model) { %>--%>

                             <tr>
                                <td><%--<%= Html.Encode(item.Id) %>--%>01</td>
                                <td><%--<%= Html.Encode(item.Title) %>--%>Blood Test</td>
                             </tr>
<%--                             <% } %>--%>
                         </tbody>     
                     </Table>
                  </asp:Panel>
            </div>
                 <asp:Panel ID="Panel4" runat="server" Height="310px" Width="710px">
                        <br />
                        <br />
                 </asp:Panel>
        </div>
</asp:Content>

