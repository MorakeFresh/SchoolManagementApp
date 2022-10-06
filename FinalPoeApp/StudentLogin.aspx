<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="FinalPoeApp.StudentLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-1g-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> Student Login</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Username" runat="server"/>
                                        <asp:TextBox ID="txtBox_Username" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Username" />
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Password" runat="server"/>
                                        <asp:TextBox ID="txtBox_Password" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Password" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_SignIn" runat="server" Text="Sign In" OnClick="btn_SignIn_Click" CssClass="btn btn-primary"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_Register" runat="server" Text="Register" OnClick="btn_Register_Click" CssClass="btn btn-primary"/>
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
