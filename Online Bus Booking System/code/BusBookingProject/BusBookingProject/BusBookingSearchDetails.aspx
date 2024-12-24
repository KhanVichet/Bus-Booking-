<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="BusBookingSearchDetails.aspx.cs" Inherits="BusBookingProject.BusBookingSearchDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .gridview-container {
            margin-top: 8%;
        }

        .gridview-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #f9f9f9;
        }

        .gridview-table th {
            padding: 12px;
            background-color: #343a40;
            color: #ffffff;
            border: 1px solid #dee2e6;
            text-align: left;
            font-weight: bold;
        }

        .gridview-table td {
            padding: 12px;
            border: 1px solid #dee2e6;
            background-color: #ffffff;
        }

        .gridview-table tr:nth-child(even) td {
            background-color: #f2f2f2;
        }

        .gridview-table tr:hover td {
            background-color: #e9ecef;
        }

        .action-link {
            color: #007bff;
            text-decoration: none;
        }

        .action-link:hover {
            text-decoration: underline;
        }
    </style>

    <div class="container gridview-container">
        <asp:HyperLink ID="hlinkSearch" runat="server" NavigateUrl="~/Home.aspx" style="width:10%;align-content:center" class="btn btn-info btn-block">Search Again</asp:HyperLink>
        <asp:GridView ID="gvBusDetails" EmptyDataText="No Record Found...." runat="server" AutoGenerateColumns="False" CssClass="gridview-table" OnRowDataBound="gvBusDetails_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="Bus Name">
                    <ItemTemplate>
                        <asp:Label ID="lblBusName" runat="server" Text='<%# Eval("BusName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Departure Time">
                    <ItemTemplate>
                        <asp:Label ID="lbldeparture" runat="server" Text='<%# Eval("DepartureTime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Arrival Time">
                    <ItemTemplate>
                        <asp:Label ID="lblArrival" runat="server" Text='<%# Eval("ArivalTime") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Available Seats">
                    <ItemTemplate>
                        <asp:Label ID="lblAvailableSeats" runat="server" Text='<%# Eval("AvailableSeats") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fare">
                    <ItemTemplate>
                        <asp:Label ID="lblFare" runat="server" Text='<%# Eval("Fare") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="hplnkSelect" runat="server" CssClass="action-link" ToolTip="Select Bus">Select Bus</asp:HyperLink>
                        <asp:HiddenField ID="hdnBusID" runat="server" Value='<%# Eval("BusId") %>' />
                        <asp:HiddenField ID="hdnSeatRow" runat="server" Value='<%# Eval("SeatRow") %>' />
                        <asp:HiddenField ID="hdnSeatColumn" runat="server" Value='<%# Eval("SeatColumn") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
