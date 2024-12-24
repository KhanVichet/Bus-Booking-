<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.Admin.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Include custom CSS for GridView -->
    <style>
        .gridview-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .gridview-container .gridview-header {
            text-align: center;
            font-size: 14px; /* Smaller font size for the header */
            font-weight: bold;
            margin-bottom: 20px;
        }
        .gridview-container .aspNet-GridView {
            border-collapse: collapse;
            width: 100%;
            font-size: 12px; /* Smaller text size for table content */
        }
        .aspNet-GridView th {
            background-color: #007bff;
            color: white;
            padding: 8px; /* Reduced padding */
            text-align: left;
            font-size: 12px; /* Smaller header font size */
        }
        .aspNet-GridView td {
            padding: 8px; /* Reduced padding */
            border-bottom: 1px solid #ddd;
        }
        .aspNet-GridView tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .aspNet-GridView tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" gridview-container" style="margin-top:6%;">
        <div class="gridview-header">Booking Report</div>
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found..." 
            AutoGenerateColumns="False" AllowPaging="True" PageSize="20" CssClass="aspNet-GridView"
            Width="100%" Font-Size="12">
            <Columns>
              
                <asp:TemplateField HeaderText="Sr. No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                
              
                <asp:BoundField HeaderText="Bus Name" DataField="BusName" />
                <asp:BoundField HeaderText="Passenger Name" DataField="PaxName" />
                <asp:BoundField HeaderText="Email ID" DataField="Email" />
                <asp:BoundField HeaderText="Contact No" DataField="Contact" />
                <asp:BoundField HeaderText="Origin" DataField="Origin" />
                <asp:BoundField HeaderText="Destination" DataField="Destination" />
                <asp:BoundField HeaderText="Travel Date" DataField="TravelDate" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField HeaderText="Seat No" DataField="SeatNo" />
                <asp:BoundField HeaderText="Fare" DataField="Fare" DataFormatString="{0:C}" />
                <asp:BoundField HeaderText="Booked By" DataField="BookedBy" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
