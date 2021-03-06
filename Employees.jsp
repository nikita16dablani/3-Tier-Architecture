<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='Employee'/>
<jsp:include page='/MasterPageTopSection.jsp'/>
<link rel='stylesheet' type='text/css' href='/styletwo/css/employees.css'>
<script src='/styletwo/js/Employees.js'></script>
<h2><center><u>Employees</u></center></h2>
<div class='employeeGrid'>
<table border='1'id='employeesGridTable' align='center'>
<thead>
<!-- This is for the table title -->
<!Table head starts here-->
<tr>
<th colspan='6' class='employeeGridHeader'>
<a href='/styletwo/EmployeeAddForm.jsp'>Add Employee</a>
</th>
</tr>
<tr>
<th class='employeeGridSNOColumnTitle'>S.No</th>
<th class='employeeGridIdColumnTitle' >Id.</th>
<th class='employeeGridNameColumnTitle'>Name</th>
<th class='employeeGridDesignationColumnTitle'>Designation</th>
<th class='employeeGridEditOptionColumnTitle'>Edit</th>
<th class='employeeGridDeleteOptionColumnTitle'>Delete</th>
</tr>
<!--Table head ends here-->
</thead>
<tbody>
<!-- Data from database -->
<tr style='cursor:pointer'>
<td style='text-align:right' placeHolderId='serialNumber'></td>
<td placeHolderId='employeeId'></td>
<td placeHolderId='name'></td>
<td placeHolderId='designation'></td>
<td placeHolderId='editOption' style='text-align:center'></td>
<td placeHolderId='deleteOption' style='text-align:center'></td>
</tr>
</tbody>
</table>
</div>
<!--We want to section in here because whenever a row-->
<!--is clicked we are supposed to show all the details of that employee in the other panel-->
<!--so Right  panel will be divided in two portions-->
<!--One portion will contain the details such as name,id,designation-->
<!--and the other one will contain rest of the details-->
<center>
<div style='height:16vh;margin-left:5px;margin-right:5px;margin-bottom:px;margin-top:5px;padding:5px;border:1px solid black align='center''>
<label style='background:gray;color:white;padding-left:5px;padding-right:5px'>Details</label>
<table align='center' border='0'  >
<tr>
<td>EmployeeId:<span id='detailPanel_employeeId' style='margin-right:30px'></span></td>
<td>Name:<span id='detailPanel_name' style='margin-right:30px'></span></td>
<td>Designation:<span id='detailPanel_designation' style='margin-right:30px'></span></td>
</tr>
<tr>
<td>Date Of Birth:<span id='detailPanel_dateOfBirth' style='margin-right:40px'></span></td>
<td>Gender:<span id='detailPanel_gender' style='margin-right:40px'></span></td>
<td>Is Indian:<span id='detailPanel_isIndian' style='margin-right:40px'></span></td>
</tr>
<tr>
<td>Basic Salary:<span id='detailPanel_basicSalary' style='margin-right:40px'></span></td>
<td>Pan Number:<span id='detailPanel_panNumber' style='margin-right:40px'></span></td>
<td>Aadhar Card Number:<span id='detailPanel_aadharCardNumber' style='margin-right:40px'></span></td>
</tr>
</center>
</table>
</div>
<jsp:include page='/MasterPageBottomSection.jsp'/>