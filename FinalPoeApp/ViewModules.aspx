<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewModules.aspx.cs" Inherits="FinalPoeApp.ViewModules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-1g-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> View Module Details</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Module_Code" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="Module_Code" HeaderText="Module_Code" ReadOnly="True" SortExpression="Module_Code" />
                                                <asp:BoundField DataField="Module_Name" HeaderText="Module_Name" SortExpression="Module_Name" />
                                                <asp:BoundField DataField="Module_Credit" HeaderText="Module_Credit" SortExpression="Module_Credit" />
                                                <asp:BoundField DataField="Class_Hours" HeaderText="Class_Hours" SortExpression="Class_Hours" />
                                                <asp:BoundField DataField="Self_Study_Hours" HeaderText="Self_Study_Hours" SortExpression="Self_Study_Hours" />
                                                <asp:BoundField DataField="Remaining_Hours" HeaderText="Remaining_Hours" SortExpression="Remaining_Hours" />
                                                <asp:BoundField DataField="Hours_Spent" HeaderText="Hours_Spent" SortExpression="Hours_Spent" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userdbConnectionString %>" SelectCommand="SELECT [Module_Code], [Module_Name], [Module_Credit], [Class_Hours], [Self_Study_Hours], [Remaining_Hours], [Hours_Spent] FROM [Modules]"></asp:SqlDataSource>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_ModuleDetails" runat="server" Text="New Module Details" CssClass="btn btn-primary" OnClick="btn_View_Click"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
</asp:Content>
