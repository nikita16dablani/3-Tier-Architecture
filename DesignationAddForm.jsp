<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='DESIGNATION'/>
<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<jsp:include page='/MasterPageTopSection.jsp'/>
<script src='/styletwo/js/DesignationAddForm.js'></script>
<center><h2><u> Designation(Add Module)</u></h2>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/styletwo/AddDesignation.jsp' onsubmit='return validateForm(this)'>
<tm:FormID/>
Designation
<input type='text' id='title' name='title' maxlength='35' size='36' value='${designationBean.title}'>
<br>	
<span id='titleErrorSection' class='error'></span><br>
<button type='submit'>Add</button>
<button type='Button' onClick='cancelAddition()'>Cancel</button>
</form>
<form id='cancelAdditionForm' action='/styletwo/Designations.jsp'>
</form>
</center>
<jsp:include page='/MasterPageBottomSection.jsp'/>