<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarimexCars._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:CarimaxCarSalesConnectionString %>' SelectCommand="SELECT * FROM [VehicleAndSellerDetails]"></asp:SqlDataSource>
        <div style="margin: 30px">
            <p>
                <asp:Label ID="SellerName_Label"  runat="server" Text="Seller Name"></asp:Label>
                <asp:TextBox ID="SellerName_TextBox" runat="server" MaxLength="255"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_SellerName" ControlToValidate="SellerName_TextBox" runat="server" ErrorMessage="No numbers and spaces allowed" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="Email_Label" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="Email_TextBox" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="Ph_Number_Label" runat="server" Text="Phone Number"></asp:Label>
                <asp:TextBox ID="Ph_Number" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="Address_Label" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="Address_TextBox" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="City_Label" runat="server" Text="City"></asp:Label>
                <asp:TextBox ID="City_TextBox" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="VehicleMake_Label" runat="server" Text="Vehicle Make"></asp:Label>
                <asp:TextBox ID="VehicleMake_TextBox" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="VehicleModel_Label" runat="server" Text="Vehicle Model"></asp:Label>
                <asp:TextBox ID="VehicleModel_TextBox" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Label ID="VehicleYear_Label" runat="server" Text="Vehicle Year"></asp:Label>
                <asp:TextBox TextMode="Date" ID="VehicleYear_TextBox" runat="server"></asp:TextBox>
            </p>
        </div>

        <div style="margin: 30px">
            <p>
                <asp:Button ID="Submit_Button" runat="server" Text="Submit" OnClick="Submit_Button_Click" />
            </p>
        </div>
    </div>
</asp:Content>
