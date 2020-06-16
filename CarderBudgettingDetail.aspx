<%@ Page Title="" Language="C#" MasterPageFile="~/HRMaster.Master" AutoEventWireup="true" CodeBehind="CarderBudgettingDetail.aspx.cs" Inherits="Smarter_HRIS.CarderBudgettingDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/sDialogBoxes.css" rel="stylesheet" />
    <link href="css/BackDrop.css" rel="stylesheet" />
    <link href="css/sComponentStyles.css" rel="stylesheet" />
    <script>
        var curr1;
        var budg1;
        function CalculateEmpDiff1(tex, val1) {


            if (tex === 'curr') {
                curr1 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;

            }
            else (tex === 'budg')
            {

                budg1 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr1 - budg1;
            document.getElementById('txtDiffAmount1').innerHTML = res;


            console.log(res);

        }



        var curr2 = 0;
        var budg2 = 0;
        function CalculateEmpDiff2(tex, val1) {


            if (tex === 'curr') {
                curr2 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budg2 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr2 - budg2;
            console.log(res);
            document.getElementById('txtDiffAmount2').innerHTML = res;
        }


        var curr3 = 0;
        var budg3 = 0;

        function CalculateEmpDiff3(tex, val1) {
            if (tex === 'curr') {
                curr3 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budg3 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr3 - budg3;
            console.log(res);
            document.getElementById('txtDiffAmount3').innerHTML = res;
        }



        var curr4 = 0;
        var budg4 = 0;
        function CalculateEmpDiff4(tex, val1) {


            if (tex === 'curr') {
                curr4 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budg4 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr4 - budg4;
            console.log(res);
            document.getElementById('txtDiffAmount4').innerHTML = res;
        }


        var curr5 = 0;
        var budg5 = 0;
        function CalculateEmpDiff5(tex, val1) {


            if (tex === 'curr') {
                curr5 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budg5 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr5 - budg5;
            console.log(res);
            document.getElementById('txtDiffAmount5').innerHTML = res;
        }


        var curr6 = 0;
        var budg6 = 0;
        function CalculateEmpDiff6(tex, val1) {


            if (tex === 'curr') {
                curr6 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budg6 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr6 - budg6;
            console.log(res);
            document.getElementById('txtDiffAmount6').innerHTML = res;
        }



        var curr7 = 0;
        var budg7 = 0;
        function CalculateEmpDiff7(tex, val1) {


            if (tex === 'curr') {
                curr7 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budg7 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = curr7 - budg7;
            console.log(res);
            document.getElementById('txtDiffAmount7').innerHTML = res;
        }

    </script>


    <script>
        var currSal1;
        var budgSal1;
        function CalculateSalDiff1(tex, val1) {


            if (tex === 'curr') {
                currSal1 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;

            }
            else (tex === 'budg')
            {

                budgSal1 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal1 - budgSal1;
            document.getElementById('CBDiffSal1').innerHTML = res;


            console.log(res);

        }



        var currSal2 = 0;
        var budgSal2 = 0;
        function CalculateSalDiff2(tex, val1) {


            if (tex === 'curr') {
                currSal2 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budgSal2 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal2 - budgSal2;
            console.log(res);
            document.getElementById('CBDiffSal2').innerHTML = res;
        }


        var currSal3 = 0;
        var budgSal3 = 0;

        function CalculateSalDiff3(tex, val1) {
            if (tex === 'curr') {
                currSal3 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budgSal3 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal3 - budgSal3;
            console.log(res);
            document.getElementById('CBDiffSal3').innerHTML = res;
        }



        var currSal4 = 0;
        var budgSal4 = 0;
        function CalculateSalDiff4(tex, val1) {


            if (tex === 'curr') {
                currSal4 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budgSal4 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal4 - budgSal4;
            console.log(res);
            document.getElementById('CBDiffSal4').innerHTML = res;
        }


        var currSal5 = 0;
        var budgSal5 = 0;
        function CalculateSalDiff5(tex, val1) {


            if (tex === 'curr') {
                currSal5 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budgSal5 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal5 - budgSal5;
            console.log(res);
            document.getElementById('CBDiffSal5').innerHTML = res;
        }


        var currSal6 = 0;
        var budgSal6 = 0;
        function CalculateSalDiff6(tex, val1) {


            if (tex === 'curr') {
                currSal6 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budgSal6 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal6 - budgSal6;
            console.log(res);
            document.getElementById('CBDiffSal6').innerHTML = res;
        }



        var currSal7 = 0;
        var budgSal7 = 0;
        function CalculateSalDiff7(tex, val1) {


            if (tex === 'curr') {
                currSal7 = val1; //document.getElementById('ContentPlaceHolder1_txtCurrAmount0').innerHTML;
            }
            else (tex === 'budg')
            {
                budgSal7 = val1;//document.getElementById('ContentPlaceHolder1_txtBudgAmount0').innerHTML;
            }

            var res = currSal7 - budgSal7;
            console.log(res);
            document.getElementById('CBDiffSal7').innerHTML = res;
        }

    </script>

    <style>
        .CBTextAmount {
            width: 140px;
            text-align: left;
            padding: 3px 5px;
            border: 1px solid #ababab;
        }




        .FieldHeader {
            /*border:1px black solid;*/
            width: auto;
            margin: 0 5px 2px 5px;
            font-weight: bold;
            text-align: center;
        }

        .FieldHeader-BudSal {
            /*border:1px black solid;*/
            width: 200px;
            margin: 0 5px 2px 5px;
            font-weight: bold;
            height: 30px;
        }

        .CBTextDiff {
            width: 80px;
            height: 32px;
            padding: 0px 10px;
            /*border: 1px #c9d3da solid;*/
        }

        .CBCol1 {
            width: 120px;
            margin: 5px 0px;
        }

        .CBCol2 {
            width: 250px;
            margin: 5px 0px;
        }

        .CBCol3 {
            width: 270px;
            margin: 5px 0px;
        }

        .CBCol4 {
            width: 145px;
            margin: 5px 0px;
        }

        .CBCol5 {
            width: 140px;
            margin: 5px 0px;
        }

        .CBCol6 {
            width: 140px;
            margin: 5px 0px;
        }

        .OrgStruct {
            border: 1px solid #ababab;
            border-radius: 6px;
            padding: 5px 10px;
            margin-bottom: 5px;
        }
    </style>


    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
                <!--#region  Delete Dialog  -->
        <div class="BackDrop" id="deletebackdrop" style="display: none">
            <div class="center">
                <div id="deletedialogbox" style="display: none;" class="DialogBox">
                    <div class="TitleBar">Delete Record...</div>
                    <div class="sDialogBody">
                        <div class="bodyMessage">
                            <p>Are you sure you want to delete this assigned shift?</p>
                        </div>

                        <div class="bodyButtons">
                            <asp:Button ID="btn_yes" CssClass="btn-yes"
                                runat="server"  Text="Yes" OnClick="btn_yes_Click" />
                            <button runat="server" class="btn-no" type="button"
                                id="btn_no" onclick="HideDialogBox()">
                                No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <legend>Carder Budgetting</legend>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <img style="position: relative; top: 55%; left: 40%" src="img/294.GIF" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField ID="lblUserID" runat="server" />
                <asp:Panel ID="pnlMessages" runat="server"></asp:Panel>
                <div class="grid">
                    <div class="row">

                        <div class="span2">
                            Session
                        </div>
                        <div class="span4">
                            <asp:DropDownList ID="drpCBSession" Width="250" runat="server" OnSelectedIndexChanged="drpCBSession_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList><br />

                        </div>
                        <div class="span4">
                        </div>

                        <div class="span1">
                            <b>Employees</b>
                        </div>

                        <div class="span2">
                        </div>
                        <div class="span2">
                        </div>

                    </div>


                    <div class="row">
                        <div class="OrgStruct">
                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        Company
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpCompany" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpCompany_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">

                                        <asp:DropDownList ID="drpDesignat1" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDesignat1_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount1" onkeyup="CalculateEmpDiff1('curr',this.value)" runat="server" />

                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount1" onkeyup="CalculateEmpDiff1('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount1">--</label>
                                    </div>

                                </div>
                            </div>


                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal1" onkeyup="CalculateSalDiff1('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">

                                        <input type="text" class="CBTextAmount" id="CBBudgSal1" onkeyup="CalculateSalDiff1('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal1">--</label>
                                    </div>
                                </div>



                            </div>


                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave1" runat="server" Text="Save" OnClick="btnSave1_Click" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="OrgStruct">

                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        Division
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpDivision" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDivision_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">
                                        <asp:DropDownList ID="drpDesignat2" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDesignat2_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount2" onkeyup="CalculateEmpDiff2('curr',this.value)" runat="server" />

                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount2" onkeyup="CalculateEmpDiff2('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount2">--</label>
                                    </div>

                                </div>
                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel2" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal2" onkeyup="CalculateSalDiff2('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">

                                        <input type="text" class="CBTextAmount" id="CBBudgSal2" onkeyup="CalculateSalDiff2('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal2">--</label>
                                    </div>
                                </div>



                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave2" runat="server" Text="Save" OnClick="btnSave2_Click" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="OrgStruct">

                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        Sub Division
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpSubDivision" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpSubDivision_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">
                                        <asp:DropDownList ID="drpDesignat3" Width="250" runat="server" OnSelectedIndexChanged="drpDesignat3_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount3" onkeyup="CalculateEmpDiff3('curr',this.value)" runat="server" />

                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount3" onkeyup="CalculateEmpDiff3('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount3">--</label>
                                    </div>

                                </div>
                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel3" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal3" onkeyup="CalculateSalDiff3('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">

                                        <input type="text" class="CBTextAmount" id="CBBudgSal3" onkeyup="CalculateSalDiff3('budg',this.value)" runat="server" />


                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal3">--</label>
                                    </div>
                                </div>



                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave3" runat="server" OnClick="btnSave3_Click" Text="Save" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="OrgStruct">

                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        Department
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpDepartment" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDepartment_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">
                                        <asp:DropDownList ID="drpDesignat4" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDesignat4_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount4" onkeyup="CalculateEmpDiff4('curr',this.value)" runat="server" />

                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount4" onkeyup="CalculateEmpDiff4('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount4">--</label>
                                    </div>

                                </div>
                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel4" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal4" onkeyup="CalculateSalDiff4('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">

                                        <input type="text" class="CBTextAmount" id="CBBudgSal4" onkeyup="CalculateSalDiff4('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal4">--</label>
                                    </div>
                                </div>



                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave4" runat="server" OnClick="btnSave4_Click" Text="Save" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="OrgStruct">

                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        Sub Department
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpSubDepartment" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpSubDepartment_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">
                                        <asp:DropDownList ID="drpDesignat5" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDesignat5_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount5" onkeyup="CalculateEmpDiff5('curr',this.value)" runat="server" />

                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount5" onkeyup="CalculateEmpDiff5('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount5">--</label>
                                    </div>

                                </div>
                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel5" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal5" onkeyup="CalculateSalDiff5('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">

                                        <input type="text" class="CBTextAmount" id="CBBudgSal5" onkeyup="CalculateSalDiff5('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal5">--</label>
                                    </div>
                                </div>



                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave5" runat="server" OnClick="btnSave5_Click" Text="Save" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="OrgStruct">

                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        Section
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpSection" Width="250" runat="server" OnSelectedIndexChanged="drpSection_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">
                                        <asp:DropDownList ID="drpDesignat6" Width="250" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpDesignat6_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount6" onkeyup="CalculateEmpDiff6('curr',this.value)" runat="server" />
                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount6" onkeyup="CalculateEmpDiff6('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount6">--</label>
                                    </div>

                                </div>
                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel6" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal6" onkeyup="CalculateSalDiff6('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">

                                        <input type="text" class="CBTextAmount" id="CBBudgSal6" onkeyup="CalculateSalDiff6('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal6">--</label>
                                    </div>
                                </div>



                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave6" runat="server" OnClick="btnSave6_Click" Text="Save" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="OrgStruct">

                            <div style="display: flex">

                                <div class="FieldHeader" style="text-align: left">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1" style="font-weight: bold">
                                        SubSection
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:DropDownList ID="drpSubSection" Width="250" runat="server"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                        Designation
                                    </div>

                                    <div class="CBCol3">
                                        <asp:DropDownList ID="drpDesignat7" Width="250" runat="server" OnSelectedIndexChanged="drpDesignat7_SelectedIndexChanged"></asp:DropDownList><br />
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Emp.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="txtCurrAmount7" onkeyup="CalculateEmpDiff7('curr',this.value)" runat="server" />
                                    </div>

                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Budg. Emp<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="txtBudgAmount7" onkeyup="CalculateEmpDiff7('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Emp Diff.<i class="icon-user-2"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="txtDiffAmount7">--</label>
                                    </div>

                                </div>
                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">
                                    <div class="CBCol1">
                                    </div>
                                    <br />
                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol2">
                                    </div>
                                    <br />
                                    <div class="CBCol2">
                                        <asp:Panel ID="Panel7" runat="server"></asp:Panel>
                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol3">
                                    </div>

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">
                                    <div class="CBCol4">
                                        Current Sal.<i class="icon-coins"></i>
                                    </div>

                                    <div class="CBCol4">
                                        <input type="text" class="CBTextAmount" id="CBCurrSal7" onkeyup="CalculateSalDiff7('curr',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol5">
                                        Bud. Sal.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol5">
                                        <input type="text" class="CBTextAmount" id="CBBudgSal7" onkeyup="CalculateSalDiff7('budg',this.value)" runat="server" />

                                    </div>
                                </div>

                                <div class="FieldHeader">
                                    <div class="CBCol6">
                                        Sal Diff.<i class="icon-coins"></i>
                                    </div>
                                    <div class="CBCol6">
                                        <label class="CBTextAmount" id="CBDiffSal7">--</label>
                                    </div>
                                </div>



                            </div>

                            <div style="display: flex">


                                <div class="FieldHeader">

                                    <div class="CBCol1">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol2">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol3">
                                    </div>
                                </div>
                                <div class="FieldHeader">


                                    <div class="CBCol4">
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol5">
                                        <asp:Button ID="btnSave7" runat="server" OnClick="btnSave7_Click" Text="Save" CssClass="info small" />
                                    </div>
                                </div>

                                <div class="FieldHeader">

                                    <div class="CBCol6">
                                    </div>
                                </div>



                            </div>

                        </div>


                    </div>


                </div>

                <div class="row">
                    <asp:GridView ID="grdSubSec" runat="server" DataKeyNames="CarderBudgetting_Details_ID" Width="100%" OnRowDeleting="grdSearch_RowDeleting" AutoGenerateColumns="False" CellPadding="6" CellSpacing="2" ForeColor="#333333" GridLines="None" OnRowCommand="grdSubSec_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CarderBudgetting_Details_ID" HeaderText="CarderBudgetting_Details_ID" Visible="False" />
                            <asp:BoundField DataField="CB_OrgStructureIName" HeaderText="Org Structure" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="CompanyDesignation" HeaderText="Company Designation" />
                            <asp:BoundField DataField="CB_CurrentAmount" HeaderText="Current Amount" />
                            <asp:BoundField DataField="CB_BudgettingAmount" HeaderText="Budgetting Amount" />
                            <asp:BoundField DataField="EmpDiff" HeaderText="Difference" />
                            <asp:BoundField DataField="CB_CurrentSalary" HeaderText="Current Salary" />
                            <asp:BoundField DataField="Budgetting_Salary" HeaderText="Budgetting Salary" />
                              <asp:BoundField DataField="Salary_Diff" HeaderText="Salary Diff." />
                            
                            <%--<asp:BoundField DataField="Modified" HeaderText="Modified" Visible="False" />--%>

                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button ID="EditButton" runat="server" CommandName="Select" CssClass="primary mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Edit" />
                                    
                                        <asp:Button ID="DelButton" runat="server" CommandName="Delete" type="button" OnClick="DelButton_Click" CssClass="danger mini" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" Text="Delete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </div>
                </div>

                <asp:HiddenField ID="IsEdit" runat="server" />
                <asp:HiddenField ID="TableID" runat="server" />

            </ContentTemplate>
        </asp:UpdatePanel>



    </div>

    <script>
        function ShowDialogBox() {
            var x = document.getElementById("deletedialogbox");
            x.style.display = "block";
            var bd = document.getElementById("deletebackdrop");
            bd.style.display = "block";
        }
        function HideDialogBox() {
            var x = document.getElementById("deletedialogbox");
            x.style.display = "none";
            var bd = document.getElementById("deletebackdrop");
            bd.style.display = "none";
        }
    </script>
</asp:Content>
