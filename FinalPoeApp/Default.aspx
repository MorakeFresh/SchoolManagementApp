<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalPoeApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-1g-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> TIME MANAGEMENT SYSTEM</h1>
                            </div>
                        </header>
                        <div class="col-md-4 col-md-offset-1">
                            Welcome to the Time Management System.
                            <br />
                            <br />
                            This App is to help people to help students to be able to manage their time and be in control of their studies. The application will require the users to provide details about their studies. The application will then help the user by providing details that will help them make a schedule.</div>

                    </section>
                </div>
            </div>

            <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_Faq" runat="server" Text="FAQ" CssClass="btn btn-primary" OnClick="btn_Faq_Click"/>
                                        </div>
                                </div>

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
    </section>
</asp:Content>
