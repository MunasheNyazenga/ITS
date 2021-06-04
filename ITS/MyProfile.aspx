<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="ITS.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register New User</title>
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-50">
            <div class="card-header" style="font-size: 1.5em; text-align: center;">My Profile</></div>
            <div class="card-body p-0">
                <div class="rowregister">
                    <div class="col-lg-70">
                        <div class="p-5">
                            
                            <div class="user">

                                
                                 
                                <div class="form-group2 row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <h4 class="form-control2 form-control-user">Username:</h4>
                                            </div>
                                            <div class="col-sm-6">
                                               <asp:Label runat="server" ID="Label2" CssClass="form-control2 form-control-user" text="Username goes here.." /> 
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <h4 class="form-control2 form-control-user">User Category:</h4>
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label runat="server" ID="Label1" CssClass="form-control2 form-control-user" text="Category goes here.." />  
                                            </div>
                                        </div>
                                    </div>
                        </div>
                       

                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <div class="form-group">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Profile Picture</h1>
                                        </div>
                                            </div>
                                        <div class="form-group alignmiddle">
                                         <asp:Image ID="imagePreview" runat="server" CssClass="img-thumbnail" ImageUrl="~/img/default_user.jpg" Width="250px" Height="250px" ImageAlign="Middle" />
                                            </div>  
                                  
                                            <div class="customfile alignmiddle">  
                                                <asp:FileUpload ID="ProfileFileUpload" runat="server" CssClass="custom-file-input" />  
                                                <label class="custom-file-label"></label>  
                                          
                                </div>
                                    </div>

                                    <div class="col-sm-6">

                                        <div class="form-group">
                                              <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control form-control-user" placeholder="User ID Number" />
                                        </div>
                                        <div class="form-group">
                                        <asp:DropdownList runat="server" ID="ComboBox1" CssClass="form-control form-control-user" placeholder="User Category">
                                                    <asp:ListItem selected hidden>User Category</asp:ListItem>
                                                    <asp:ListItem Text="Administrator" Value="0" />
                                                    <asp:ListItem Text="Student" Value="1" />
                                                    <asp:ListItem Text="Instructor" Value="2" />
                                                </asp:DropdownList>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control form-control-user" placeholder="Name" />
                                            </div>
                                            <div class="col-sm-6">
                                               <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control form-control-user" placeholder="Surname" />
                                            </div>
                                        </div>  

                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control form-control-user" placeholder="Username" />
                                            </div>
                                            <div class="col-sm-6">
                                               <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control form-control-user" placeholder="Password" />
                                            </div>
                                        </div>  
                                        
                                        <div class="form-group">
                                        <asp:DropdownList runat="server" ID="DropdownList1" CssClass="form-control form-control-user" placeholder="Gender">
                                                    <asp:ListItem selected hidden>Gender</asp:ListItem>
                                                    <asp:ListItem Text="Male" Value="0" />
                                                    <asp:ListItem Text="Female" Value="1" />
                                                </asp:DropdownList>
                                        </div>

                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <h4 class="form-control2 form-control-user">Date of Birth</h4>
                                            </div>
                                            <div class="col-sm-6">
                                               <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control form-control-user"  textmode="Date" placeholder="Date of Birth"/>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                              <asp:TextBox runat="server" ID="TextBox10" CssClass="form-control form-control-user" placeholder="Mobile Number" />
                                        </div>
                                        <div class="form-group">
                                              <asp:TextBox runat="server" ID="TextBox11" CssClass="form-control form-control-user" placeholder="Email Address" />
                                        </div>
                                        <div class="form-group">
                                              <asp:TextBox runat="server" ID="TextBox13" CssClass="form-control form-control-user" placeholder="Address" />
                                        </div>

                                        
                            </div>
                            
                        </div>

                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">


                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group row">
                                            <div class="col-sm-6 mb-3 mb-sm-0">
                                                    <asp:Button Text="Update" ID="button2" CssClass="btn btn-primary btn-user btn-block" runat="server"/>
                                            </div>
                                            <div class="col-sm-6">
                                               <asp:Button Text="Back" ID="button1" CssClass="btn btn-primary btn-user btn-block" runat="server"/>
                                            </div>
                                        </div>
                                    </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>
