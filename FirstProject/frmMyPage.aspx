<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="frmMyPage.aspx.cs" Inherits="FirstProject.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>MyPage</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <h1>this is the very first page</h1>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
        CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="true">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:label id="lblId" runat="server" Text='<%# Eval("id") %>'></asp:label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:label id="lblName" runat="server" Text='<%# Eval("name") %>'></asp:label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:label id="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:label id="lblContact" runat="server" Text='<%# Eval("contact") %>'></asp:label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course">
                <ItemTemplate>
                    <asp:label id="lblCourse" runat="server" Text='<%# Eval("course") %>'></asp:label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age">
                <ItemTemplate>
                    <asp:label id="lblAge" runat="server" Text='<%# Eval("age") %>'></asp:label>
                </ItemTemplate>
            </asp:TemplateField>
            <%-- Edit button --%>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:Button ID="BtnEdit" runat="server"  Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("id") %>' />
                </ItemTemplate>
            </asp:TemplateField>
             <%-- Delete button --%>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button runat="server" ID="BtnDelete"  Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("id") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br /><br />
    <formView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server" >this is placeholder</asp:PlaceHolder>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </formView>
</asp:Content>
