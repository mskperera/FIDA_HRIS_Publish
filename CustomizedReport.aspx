<%@ Page Language="C#" MasterPageFile="~/HRMaster.Master" MaintainScrollPositionOnPostback="true"  AutoEventWireup="true" CodeBehind="CustomizedReport.aspx.cs" Inherits="Smarter_HRIS.CustomizedReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Select/chosen.jquery.js"></script>
    <link href="Select/chosen.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




    <script>
        //$(document).ready(function () {
        //    $("#ContentPlaceHolder1_search").on("keyup", function () {
        //        var value = $(this).val().toLowerCase();
        //        $("#ContentPlaceHolder1_employee_table tr").filter(function () {
        //            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        //        });
        //    });
        //});

        function SearchValues() {

            // Declare variables 
            var input, filter, table, tr, td, i;
            input = document.getElementById("search1");
            filter = input.value.toUpperCase();
            table = document.getElementById("ContentPlaceHolder1_employee_table");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            var ddl = document.getElementById("<%=dd_column.ClientID%>");
            var colIndex = ddl.selectedIndex;
            // alert(colIndex);
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[colIndex];
                if (td) {
                    if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    </script>

    <script type="text/javascript">        

        function SelectColumn(columnIndex) {
            var x = document.getElementById("ContentPlaceHolder1_employee_table").getElementsByTagName("td");
            var tr = document.getElementById("ContentPlaceHolder1_employee_table").getElementsByTagName("tr");
            var noOfrows = document.getElementById('ContentPlaceHolder1_employee_table').rows.length - 1;
            var noOfColums = document.getElementById('ContentPlaceHolder1_employee_table').rows[0].cells.length;
            // x[0].innerHTML = "i want to change my cell color";



                   var cellIndex = 0;
            for (var i = 0; i < noOfrows*noOfColums; i++) {
                x[cellIndex].style.backgroundColor = "inherit";
                       x[cellIndex].style.color = "inherit";
                cellIndex++ ;

            }

            var rowIndex = 0;
            for (var i = 0; i < noOfrows; i++) {
                x[rowIndex + columnIndex].style.backgroundColor = "#2196F3";
                x[rowIndex + columnIndex].style.color = "white";
                rowIndex += noOfColums ;

            }

    
        }
    </script>


    <style>
        .attendanceprogress {
            border: solid;
            padding: 10px;
            background-color: #e8f5ff;
            width: 300px;
            font-weight: bold;
        }
    </style>


    <style>
        .SearchPanel {
            width: 60%;
            margin: 10px auto;
        }

        .GridviewContent {
        }

        .SetHorizontally {
            display: flex;
        }
    </style>

    <style>
        .ColumnSelectPanel{
            display:flex;
            margin:10px;
            overflow:auto;
        }
        .checkboxControl{
            margin:10px;
            font-weight:normal;

        }

        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <progresstemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </progresstemplate>
        </asp:UpdateProgress>
        <br />
        <asp:HiddenField ID="lblUserID" runat="server" />
              <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
                        <contenttemplate>
        <div style="font-size: 25px;text-align:center">Search</div>
     

                <div class="container">
                    <div class="row">
             
                               <div style="display:flex;width:300px;float:left">
  
                               <div style="margin-right:5px"> <input type="text"  class="form-control" runat="server" id="txtPresetName" /></div>
                              <asp:Button ID="btnSalvePreset" CssClass="btn primary"  style="margin:5px 5px" runat="server" OnClick="bttnSavePreset_Click" Text="Save Preset" />
                        </div>
                        <div style="display:flex; justify-content:flex-end">
                           
                           <div>
                               <button class="shortcut info" type="button" runat="server" id="btnexcelUpload"  onserverclick="bttnExport_Click">
                                                    <i class="icon-upload"></i>
                                                    Export Excel</button></div>

                           <div style="margin:5px 5px;font-size:16px;">   
                               
                               Presets</div>    
                            <asp:DropDownList ID="drpdownPresets" style="width:200px"  CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="drpPreset_SelectedIndexChanged" runat="server"></asp:DropDownList>

                        </div>
                          <div class="ColumnSelectPanel" style="width:100%" id="CheckBoxSelectPanel" runat="server"></div>

                        <asp:Panel ID="pnlMessages1" runat="server"></asp:Panel>            
                           
                     
                    


                        <div class="SearchPanel">
                            <div class="SetHorizontally">
                                

                                <asp:DropDownList ID="dd_column" runat="server"></asp:DropDownList>
                                <input type="text" class="form-control" id="search1" onkeyup="SearchValues()" />
                           
                            
                                </div>

                       
                        </div>

                    </div>

                    <div class="row">

                        <div style="overflow:auto;height:500px">
                        <div class="GridviewContent"> 
                            <asp:GridView ID="employee_table" CssClass="table table-hover"  DataKeyNames="" Width="100%" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#999999" CellPadding="7" CellSpacing="3">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                </Columns>
                      
                                <HeaderStyle BackColor="#464646" ForeColor="White" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
 
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                        </div>
                            </div>
                    </div>

                </div>




                    </contenttemplate>
                     <Triggers>
                  <asp:PostBackTrigger ControlID="btnexcelUpload" />
               </Triggers>
 
                    </asp:UpdatePanel>

    </div>

</asp:Content>
