<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .gridview-container {
            margin-top: 6%;
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

        .ticket-details h1, 
        .ticket-details h2 {
            font-weight: bold;
        }

        .ticket-details table {
            width: 100%;
            color: green;
            font-size: large;
        }

        .ticket-details table td {
            padding: 8px;
        }

        .ticket-details p {
            text-align: center;
            font-style: italic;
            font-size: 10pt;
        }
    </style>

    <div class="container gridview-container">
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass="gridview-table"
                      OnRowCommand="gdTicketReport_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="PNR No" DataField="PNRNo" />
                <asp:BoundField HeaderText="Total Booked Tickets" DataField="TotalTickets" />
                <asp:BoundField HeaderText="Booking Amount" DataField="TotalAmount" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtndownloadTicket" runat="server" CssClass="action-link" CommandName="Download Ticket" CommandArgument='<%# Container.DataItemIndex %>'>Download Ticket</asp:LinkButton>
                        <asp:HiddenField ID="hdnPNRNo" runat="server" Value='<%# Eval("PNRNo") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <div id="ticket" runat="server" visible="false" class="ticket-details">
            <h1>Online Bus Booking</h1>
            <br />
            <br />

            <h2>PNR Details</h2>
            <div class="table-bordered">
                <table class="table-striped" id="tbtPNR" runat="server">
                    <tr>
                        <td style="font-weight: bold">PNR No</td>
                        <td><asp:Label ID="lblTransactionNo" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Total Tickets</td>
                        <td><asp:Label ID="lblTotalTickets" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Total Amount</td>
                        <td><asp:Label ID="lblTotalAmount" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Bus Name</td>
                        <td><asp:Label ID="lblBusName" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>
            <br />
            <br />
            <h2>Passenger's Details</h2>
            <asp:GridView ID="gdPaxDetails" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="25" CssClass="table table-hover table-bordered" Style="margin-top: 5%" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="Sr.No">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="First Name" DataField="Fname" />
                    <asp:BoundField HeaderText="Last Name" DataField="Lname" />
                    <asp:BoundField HeaderText="Contact" DataField="Contact" />
                    <asp:BoundField HeaderText="SeatNo" DataField="SeatNo" />
                    <asp:BoundField HeaderText="Travel Date" DataField="TravelDate" />
                    <asp:BoundField HeaderText="From" DataField="Origin" />
                    <asp:BoundField HeaderText="To" DataField="Destination" />
                    <asp:BoundField HeaderText="Boarding Place" DataField="PlaceName" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <p>Thank you for booking Ticket with us, have a pleasant journey!!!!</p>
        </div>
    </div>
</asp:Content>
