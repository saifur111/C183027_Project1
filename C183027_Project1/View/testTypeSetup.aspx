<%@ Page Title="Test Type Setup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="testTypeSetup.aspx.cs" Inherits="C183027_Project1.testTypeSetup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <h2 style="text-align:center;"><%: Title %></h2>
            <div id="testTypeDiv"><br />
                <asp:Panel ID="Panel1" runat="server" Height="115px" style="margin-left: 8px" Width="710px"><br />
                    <fieldset>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Type Name" Font-Bold="True" Font-Size="Medium"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <input id="typeNameInput" runat="server" type="text" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br/>
                        <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
                        <br/>
                        <br/>
                        <asp:Button ID="typeNameSave" runat="server" Text="SAVE" OnClick="typeNameSave_Click" />
                    </fieldset><br />
                </asp:Panel><br />
                <asp:Label ID="view" runat="server" Text=""></asp:Label>
                <asp:Panel ID="Panel2" runat="server" Height="310px" Width="710px">
                    <br />
                   <asp:GridView ID="TestTypeGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Test Type" ItemStyle-Width="100px">
                            <ItemTemplate>
                                <asp:Label Text='<%#Eval("TestTypeName") %>' runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                  </asp:Panel>
            </div>
                 <asp:Panel ID="Panel4" runat="server" Height="310px" Width="710px">
                        <br />
                        <br />
                 </asp:Panel>
        </div>
</asp:Content>

