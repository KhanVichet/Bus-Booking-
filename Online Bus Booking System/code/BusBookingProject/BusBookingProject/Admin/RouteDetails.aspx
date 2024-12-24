<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="RouteDetails.aspx.cs" Inherits="BusBookingProject.Admin.RouteDetails" %>
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
        <asp:GridView ID="gdRouteDetails" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass="gridview-table"
                      OnRowDataBound="gdRouteDetails_RowDataBound">
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Route ID">
                    <ItemTemplate>
                        <asp:Label ID="lblRouteID" runat="server" Text='<%# Eval("RouteID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Origin">
                    <ItemTemplate>
                        <asp:Label ID="lblOrigin" runat="server" Text='<%# Eval("Origin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Destination">
                    <ItemTemplate>
                        <asp:Label ID="lblDestination" runat="server" Text='<%# Eval("Destination") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="hlinkBoarding" runat="server" CssClass="action-link" NavigateUrl='<%# "AddBoardingPoints.aspx?RouteID=" + Eval("RouteID") %>'>Add Boarding Points</asp:HyperLink>
                        <asp:HiddenField ID="hdnRouteID" runat="server" Value='<%# Eval("RouteID") %>' />
                        <asp:HiddenField ID="hdnBusID" runat="server" Value='<%# Eval("BusId") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
