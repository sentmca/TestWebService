package org.ofbiz.test.action;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import org.ofbiz.test.form.*;
/**
* @author Deepak Kumar
* @Web http://www.roseindia.net
* @Email roseindia_net@yahoo.com
*/

/**
 * Struts File Upload Action Form.
 *
*/
public class UploadFileAction extends Action
{
  public ActionForward execute(
  ActionMapping mapping,
  ActionForm form,
  HttpServletRequest request,HttpServletResponse response) throws Exception{
  UploadFileForm myForm = (UploadFileForm)form;

  // Process the FormFile
  FormFile myFile = myForm.getTheFile();
  String contentType = myFile.getContentType();
  String fileName  = myFile.getFileName();
  int fileSize = myFile.getFileSize();
  byte[] fileData  = myFile.getFileData();
  System.out.println("contentType: " + contentType);
  System.out.println("File Name: " + fileName);
  System.out.println("File Size: " + fileSize);
  
  return mapping.findForward("success");
  }
}