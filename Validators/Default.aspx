<%@ Page Language="C#" Inherits="Validators.Default" %>
<!DOCTYPE html>
<html>
    <head runat="server">
    	<title>Validators</title>

    		<link href="Content/bootstrap.css" rel="stylesheet" />
            <link href="Content/font-awesome.css" rel="stylesheet" />
            <link href="Content/freelancer.css" rel="stylesheet" />

    </head>
    <body>
    	<form id="form1" runat="server">
    		<section class="success">
                <div class="container">
                    <h2 class="text-center">Laborator 3: Validatoare</h2>
					<hr class="star-light" />

                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                    </div>
					
					<div class="row">
                        <div class="col-lg-4 col-lg-offset-4">

                            <div class="control-group">
                                <div class="form-group controls">
									<asp:Label ID="nameLbl" runat="server" Text="Last Name"></asp:Label>
                                    <asp:TextBox ID="nameTxt" runat="server" CssClass="form-control"></asp:TextBox>  
									<asp:RequiredFieldValidator id="ReqFV1"
										runat="server"
										ControlToValidate="nameTxt"
										ErrorMessage="Enter the last name!">*</asp:RequiredFieldValidator>
								</div>
							</div>
							<div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="firstNameLbl" runat="server" Text="First Name"></asp:Label>
                                    <asp:TextBox ID="firstNameTxt" runat="server" CssClass="form-control"></asp:TextBox>  
                                    <asp:RequiredFieldValidator id="ReqFV2"
                                        runat="server"
                                        ControlToValidate="firstNameTxt"
                                        ErrorMessage="Enter the first name!">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
							<div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="emilLbl" runat="server" Text="Email"></asp:Label>
                                    <asp:TextBox ID="emailTxt" runat="server" CssClass="form-control"></asp:TextBox>  
                                    <asp:RequiredFieldValidator id="ReqFV3"
                                        runat="server"
                                        ControlToValidate="emailTxt"
                                        ErrorMessage="Enter the email!">*</asp:RequiredFieldValidator>
									<asp:RegularExpressionValidator id="RegexpV1"
										runat="server"
										ControlToValidate="emailTxt"
										ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" >*</asp:RegularExpressionValidator>
                                </div>
                            </div>
							<div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="passwordLbl" runat="server" Text="Password"></asp:Label>
                                    <asp:TextBox ID="passwordTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>  
                                    <asp:RequiredFieldValidator id="ReqFV4"
                                        runat="server"
                                        ControlToValidate="passwordTxt"
                                        ErrorMessage="Enter the password!">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
							
                            <div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="confirmPasswordLbl" runat="server" Text="Confirm Password"></asp:Label>
                                    <asp:TextBox ID="confirmPasswordTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>  
                                    <asp:CompareValidator id="CompV1"
                                        runat="server"
                                        ControlToCompare="confirmPasswordTxt"
                                        ControlToValidate="passwordTxt">*</asp:CompareValidator>
                                        
                                </div>
                            </div>

							<div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="yearLbl" runat="server" Text="Year"></asp:Label>
                                    <asp:DropDownList CssClass="form-control" id="yearDD" runat="server">
                                        <asp:ListItem>Select year</asp:ListItem>
										<asp:ListItem>I</asp:ListItem>
										<asp:ListItem>II</asp:ListItem>
										<asp:ListItem>III</asp:ListItem>
										<asp:ListItem Value="Master I"></asp:ListItem>									
                                        <asp:ListItem Value="Master II"></asp:ListItem>
								    </asp:DropDownList>
									<asp:CompareValidator id="CompV2"
										runat="server"
										ControlToValidate="yearDD"
										ValueToCompare="Select year"
										Operator="NotEqual"
										ErrorMessage="Select an year">*</asp:CompareValidator>
                                </div>
                            </div>
							<div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="birthDateLbl" runat="server" Text="Birth Date"></asp:Label>
                                    <asp:TextBox ID="birthDateTxt" runat="server" CssClass="form-control"></asp:TextBox>  
                                    <asp:RequiredFieldValidator id="ReqFV5"
                                        runat="server"
                                        ControlToValidate="birthDateTxt"
                                        ErrorMessage="Enter the birth date!">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator id="CompV4"
                                        runat="server"
                                        ControlToValidate="birthDateTxt"
                                        Operator="DataTypeCheck"
                                        Type="Date"
                                        ErrorMessage="The date should be in the format MM/DD/YYYY">*</asp:CompareValidator>
                                        
                                </div>
                            </div>
							<div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="genderLbl" runat="server" Text="Gender"></asp:Label>
                                    <asp:RadioButtonList ID="genderRB" runat="server">
                                        <asp:ListItem>female</asp:ListItem>
                                        <asp:ListItem>male</asp:ListItem>
                                    </asp:RadioButtonList>

                                    <asp:RequiredFieldValidator id="ReqFV6"
                                        runat="server"
                                        ControlToValidate="genderRB"
                                        ErrorMessage="Select gender!">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="form-group controls">
                                    <asp:Label ID="ageLbl" runat="server" Text="Age"></asp:Label>
                                    <asp:TextBox ID="ageTxt" CssClass="form-control" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator id="ReqFV7"
                                        runat="server"
                                        ControlToValidate="ageTxt"
                                        ErrorMessage="Enter the age!">*</asp:RequiredFieldValidator>
									<asp:RangeValidator id="RangeV1"
										runat="server"
										ControlToValidate="ageTxt"
										MinimumValue="0"
										MaximumValue="120"
										Type="Integer"
										ErrorMessage="The age should be in the interval [0, 120]">*</asp:RangeValidator>
                                   <asp:CustomValidator id="CustomV1"
										runat="server"
										ControlToValidate="ageTxt"
										ErrorMessage="The age is wrong!"
										OnServerValidate="ageCheck_ServerValidate">*</asp:CustomValidator>
								</div>
                            </div>
							
						</div>
					</div>
                    <div class="row">
                        <div class="col-lg-4 col-lg-offset-4">
                            <asp:Button ID="saveBtn" 
								CssClass="btn btn-md btn-primary" 
							    runat="server" 
							    Text="Save" />
                        </div>
                    </div>
				</div>
			</section>
    	</form>
    </body>
</html>
