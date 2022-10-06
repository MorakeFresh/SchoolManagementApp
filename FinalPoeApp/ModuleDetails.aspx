<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModuleDetails.aspx.cs" Inherits="FinalPoeApp.ModuleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-1g-12">
                    <section class="panel">

                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> Semester Details</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Semester Start Date" runat="server"/>
                                        <asp:Calendar ID="Calendar_StartDate" runat="server"/>
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Semester Weeks" runat="server"/>
                                        <asp:TextBox ID="txtBox_SemesterWeeks" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Semester Weeks" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> Module Details</h1>
                            </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Module Code" runat="server"/>
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Module Code" ID="txtBox_Code"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Module Name" runat="server"/>
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Module Name" ID="txtBox_Name"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Module Credits" runat="server"/>
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Module Credits" ID="txtBox_Credits"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Class Hours P/W" runat="server"/>
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Class Hours P/W" ID="txtBox_ClassHours"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Study Hours Spent" runat="server"/>
                                        <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Study Hours Spent" ID="txtBox_HoursSpent" />
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_Save" runat="server" Text="SAVE" CssClass="btn btn-primary" OnClick="btn_Save_Click"/>
                                    </div>
                                </div>

                                
                            </div>
                        </div>

                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> Study Reminder</h1>
                            </div>
                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Module Name" runat="server"/>
                                        <asp:TextBox ID="txtBox_ModuleName" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Module Name" />
                                    </div>
                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Label Text="Study Day" runat="server"/>
                                        <asp:Calendar ID="Calendar_StudyDate" runat="server"/>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_Reminder" runat="server" Text="Set Reminder" CssClass="btn btn-primary" OnClick="btn_Reminder_Click"/>
                                    </div>

                                    <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_View" runat="server" Text="VIEW MODULES" CssClass="btn btn-primary" OnClick="btn_View_Click"/>
                                        </div>
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
