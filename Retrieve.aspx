<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Retrieve.aspx.cs" Inherits="CarimexCars.Retrieve" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:CarimaxCarSalesConnectionString %>' SelectCommand="SELECT * FROM [VehicleAndSellerDetails]"></asp:SqlDataSource>
      
        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" ModelType="CarimexCars.Vehicle">
            <Columns>
                <asp:BoundField DataField="SellerName" HeaderText="Seller Name"></asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address"></asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="city"></asp:BoundField>
                <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number"></asp:BoundField>
                <asp:BoundField DataField="EmailAddress" HeaderText="Email Address"></asp:BoundField>
                <asp:BoundField DataField="Make" HeaderText="Make"></asp:BoundField>
                <asp:BoundField DataField="Model" HeaderText="Model"></asp:BoundField>
                <asp:BoundField DataField="Year" HeaderText="year"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
