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
                         <asp:DropDownList ID="selectTestDropDownList" AutoPostBack="True" runat="server" OnSelectedIndexChanged="testTypeDropDown_SelectedIndexChanged"></asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                         <br />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <asp:Label ID="Label3" runat="server" Text="Fee(BDT)" Font-Bold="True" Font-Size="Medium"></asp:Label>
                
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                         <input id="feeInput" runat="server" type="number" />

                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br/>
                         <asp:Label ID="outputLabel" CssClass="outputLabel" runat="server"></asp:Label>
                         <br/>

                         <br />
                         <br />

                         <asp:Button ID="addButton" runat="server" Text="ADD" Width="100px" onclick="addButton_Click" />
                         <br />
                         <asp:GridView ID="testRequestGridView" AutoGenerateColumns="False" CssClass="gridView" runat="server">
                               <Columns>
                                    <asp:TemplateField HeaderText="SN" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex+1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="TestName" HeaderText="Test Name"/>
                                    <asp:BoundField ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" DataField="Fee" HeaderText="Fee"/>
                                </Columns>
                          </asp:GridView>
                          <br />
                          <br />
                          <asp:Label ID="Label6" runat="server" Text="Total" Font-Bold="True" Font-Size="Medium"></asp:Label>
    
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;

                         <input id="totalInput" runat="server" ForeColor="red" CssClass="textBox" ReadOnly="True" type="number" />
                          <br />
                         <br />
                          <asp:Button ID="saveButton" runat="server" Text="SAVE" Width="100px" OnClick="saveButton_Click" />
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

