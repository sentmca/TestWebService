package org.ofbiz.test.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.ofbiz.test.form.HelloWorldForm;

import org.ofbiz.test.ExecuteTest;

public class HelloWorldAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		executeTest();
		HelloWorldForm hwForm = (HelloWorldForm) form;
//		this.getServlet().getServletContext().getRealPath("TestFiles\\CouponTest.txt");		
		hwForm.setMessage("Web Service Executed Succesfully");
		return mapping.findForward("success");
	}
	
	public String executeTest(){
		ExecuteTest ext =new  ExecuteTest();
		ext.main(null);
		return "Service Executed Succesfully";
		
	}
}