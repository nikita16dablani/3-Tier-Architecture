<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='EMPLOYEE'/>
<jsp:useBean id='employeeBean' scope='request' class='com.thinking.machines.hr.beans.EmployeeBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<jsp:include page='/MasterPageTopSection.jsp'/>
<script src='/styletwo/js/EmployeeUpdateForm.js'></script>
<center><h2> Employee(Update Module)</h2>
<tm:FormID/>
<form method='post' action='/styletwo/UpdateEmployee.jsp' onsubmit='return validateForm(this)'>
<table align='center'>
<input type='hidden' id='employeeId' name='employeeId' value='${employeeBean.employeeId}'>
<tr>
<td>Name</td>
<td><input type='text' id='name' name='name' maxlength='50' size='51' value='${employeeBean.name}'>
<span id='nameErrorSection' style='color:red'></span></td>
</tr>
<tr>
<td>Designation</td>
<td><select id='designationCode' name='designationCode'>
<option value='-1'>&lt;Select Designation&gt;</option>
<tm:EntityList populatorClass='com.thinking.machines.hr.bl.DesignationBL' populatorMethod='getAll' name='dBean'>
<tm:If condition='${employeeBean.designationCode==dBean.code}'>
<option selected value='${dBean.code}'>${dBean.title}</option>
</tm:If>

<tm:If condition='${employeeBean.designationCode!=dBean.code}'>
<option value='${dBean.code}'>${dBean.title}</option>
</tm:If>
</tm:EntityList>

</select>

<span id='designationCodeErrorSection' style='color:red'></span>
</td>
</tr>


<tr>
<td>Date of birth</td>
<td><input type='date' id='dateOfBirth' name='dateOfBirth' value='${employeeBean.dateOfBirth}'>
<span id='dateOfBirthErrorSection' style='color:red'></span>
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<tm:If condition='${employeeBean.gender!="M"}'>
<input type='radio' id='male' name='gender' value='M'>Male
</tm:If>
<tm:If condition='${employeeBean.gender=="M"}'>
<input checked type='radio' id='male' name='gender' value='M'>Male
</tm:If>
&nbsp;&nbsp;&nbsp;&nbsp;
<tm:If condition='${employeeBean.gender!="F"}'>
<input type='radio' id='female' name='gender' value='F'>Female
</tm:If>
<tm:If condition='${employeeBean.gender=="F"}'>
<input checked type='radio' id='female' name='gender' value='F'>Female
</tm:If>
<span id='genderErrorSection' style='color:red'></span>
</td>
</tr>

<tr>
<td>Indian ?</td>
<td>
<tm:If condition='${employeeBean.isIndian=="Yes"}'>
<input checked type='checkbox' name='isIndian' id='isIndian' value='Yes'>
</tm:If>
<tm:If condition='${employeeBean.isIndian!="Yes"}'>
<input type='checkbox' name='isIndian' id='isIndian' value='Yes'>
</tm:If>
</td>
</tr>


<tr>
<td>Basic Salary</td>
<td>
<input type='text' style='text-align:right' name='basicSalary' id='basicSalary' maxlength='12' size='13' value='${employeeBean.basicSalary}'>
<span id='basicSalaryErrorSection' style='color:red'></span>
</td>
</tr>

<tr>
<td>PAN Number</td>
<td>
<input type='text' id='panNumber' name='panNumber'  maxlength='15' size='16' value='${employeeBean.panNumber}'>
<span id='panNumberErrorSection' style='color:red'></span>
</td>
</tr>

<tr>
<td>Aadhar Card Number</td>
<td>
<input type='text' id='aadharCardNumber' name='aadharCardNumber'  maxlength='15' size='16' value='${employeeBean.aadharCardNumber}'>
<span id='aadharCardNumberErrorSection' style='color:red'></span>
</td>
</tr>

<tr>
<td>
<span class='error'>${errorBean.error}</td></span>
</tr>
<tr>
<td colspan='2'><button type='submit'>Update</button>
&nbsp;&nbsp;<button type='Button' onClick='cancelUpdation()'>Cancel</button></td>
</table>
</form>
</div>
<form id='cancelUpdateForm' action='/styletwo/Employees.jsp'>
</form>
</center>
</div><!-- Content panel ends here-->
<!-- Footer starts here-->
<footer class="u-clearfix u-footer u-gradient u-footer" id="sec-e6e3"><div class="u-clearfix u-sheet u-sheet-1">
<div class="u-align-left u-social-icons u-spacing-10 u-social-icons-1">
<a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-cbe2"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-cbe2"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
</a>
<a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-82e8"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-82e8"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
</a>
<a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3910"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-3910"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
</a>
<a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3aae"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-3aae"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
</a>
</div>
<div class="u-border-1 u-border-white u-expanded-width u-line u-line-horizontal u-opacity u-opacity-50 u-line-1"></div>
<p class="u-align-center u-text u-text-1">&copy; 3-TIER ARCHITECTURE</p>
</div></footer>
<!--Footer ends here-->
</div>
<!--Main container ends here-->
</body>
</html>