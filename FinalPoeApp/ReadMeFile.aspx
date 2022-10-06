<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReadMeFile.aspx.cs" Inherits="FinalPoeApp.ReadMeFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-1g-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-4 col-md-offset-4">
                                <h1> TIME MANAGEMENT SYSTEM</h1>
                                <h1> &nbsp;READ ME FILE</h1>   
                            </div>
                            <br />
                            <br />
                            Welcome to the Time Management System.
                            <br />
                            <br />
                            This App is to help people to help students to be able to manage their time and be in control of their studies. The application will require the users to provide details about their studies. The application will then help the user by providing details that will help them make a schedule.
                            <br />
                            <br />
                            HOW TO RUN THE APP: To run the app the users will need to have visual studio with C# extentions installed.
                            <br />
                            <br />
                            HOW TO USE THE TIME MANAGEMENT APP:
                            <br />
                            The user will be asked to:
                            <br />
                            1. Register if they are first time users without a Username and Password
                            <br />
                            2. Sign in using their Username and Password
                            <br />
                            3. Enter their semester details. (Semester weeks and Start date
                            <br />
                            4. Enter their module details. (Code, Name, Credits, Class Hours)
                            <br />
                            5. To select a date to study for a certail subject<br />
                            6. View their module details.
                            <br />
                            <br />
                            The application will then provide the class hours per week and the self study hours required
                            <br />
                            <br />
                            The user will then be required to enter the completed self study hours on a specific date. The application will then provide the user with the remaining self study hours.
                            <br />
                            <br />
                            Reference List/ Bibliography
                            <br />
                            Doyle, B. 2015. C# Programming: From Problem Analysis To Program Design. 5th ed. Boston. Cengage Learning w3schools.2021. C# Tutorial.2021.[online]. Available at: https://www.w3schools.com/cs/ [Accessed: November 29 2021].
                        </header>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class="form-group">
                                        <asp:Button ID="btn_Next" runat="server" Text="Next"  CssClass="btn btn-primary" OnClick="btn_Next_Click"/>
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
