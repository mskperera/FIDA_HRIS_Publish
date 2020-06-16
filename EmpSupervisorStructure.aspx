<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="EmpSupervisorStructure.aspx.cs" Inherits="Smarter_HRIS.EmpSupervisorStructure" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="js/jQuery-1.8.3.js"></script>
            <script src="js/jquery/jquery.widget.min.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["orgchart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            $.ajax({
                type: "POST",
                url: "EmpSupervisorStructure.aspx/GetChartData1",
                data: "{ 'value': '<%= lblEmpID.Value %>' }",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                //  type: "POST",
                success: function (r) {
                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Entity');
                    data.addColumn('string', 'ParentEntity');
                    data.addColumn('string', 'ToolTip');
                    for (var i = 0; i < r.d.length; i++) {
                        var Structure_Id = r.d[i][0].toString();
                        var StructureName = r.d[i][1];
                        var EmpCount = r.d[i][2];
                        var OrganizationID = r.d[i][3] != null ? r.d[i][3].toString() : '';
                        data.addRows([[{
                            v: Structure_Id,
                            f: StructureName + '<div>(<span>' + EmpCount + '</span>)</div>'
                        }, OrganizationID, EmpCount]]);
                    }
                    var chart = new google.visualization.OrgChart($("#chart")[0]);
                    chart.draw(data, { allowHtml: true });
                },
                failure: function (r) {
                    alert(r.d);
                },
                error: function (r) {
                    alert(r.d);
                }
            });
        }
    </script>

    <style>
        .google-visualization-orgchart-table {
            border-collapse: separate !important;
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
        </ProgressTemplate>
    </asp:UpdateProgress>
    <div class="container">
         <asp:HiddenField ID="lblEmpID" runat="server" />
         <asp:HiddenField ID="lblCompanyID" runat="server" />
        <legend>Supervisor Structure</legend>
        <section class="content" id="sect1">
            <div class="row">
                <div id="chart">

                </div>
            </div>
        </section>
    </div>
</asp:Content>
