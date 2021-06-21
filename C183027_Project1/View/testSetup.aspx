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

                         <asp:DropDownList ID="testTypeDropDownList" runat="server"></asp:DropDownList>

                         &nbsp;&nbsp;&nbsp;&nbsp;
                         <br/>
                         <br/>
                         <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
                         <br/>
                         <br/>

                         <asp:Button ID="testValueButton" runat="server" Text="SAVE" OnClick="saveButton_Click" Width="100px" />
                         <br/>
                            <asp:GridView ID="testSetupGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Test Name" ItemStyle-Width="250px">
                                    <ItemTemplate>
                                        <asp:Label Text='<%#Eval("TestName") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Fee" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label Text='<%#Eval("Fee") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Test Type" ItemStyle-Width="100px">
                                    <ItemTemplate>
                                        <asp:Label Text='<%#Eval("TestType") %>' runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
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
