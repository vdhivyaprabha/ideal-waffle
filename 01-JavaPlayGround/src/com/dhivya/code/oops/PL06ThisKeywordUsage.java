package com.dhivya.code.oops;

import com.dhivya.code.common.StringUtils;

/**
 * This class is used to demonstate the Methdos in which 'This' keywords can be used.
 * 
 * Usage 1 : USE THIS KEYWORD TO REFER CURRENT CLASS INSTANCE VARAIBLES. 
 * Usage 2 : USE THIS KEYWORD TO REFER CURRENT CLASS METHOD. 
 * Usage 3 : USE THIS KEYWORD TO REFER CURRENT CLASS CONSTRUCTOR.
 * 
 * @author Dhivyaprabha Vijayakumaran
 *
 */
public class PL06ThisKeywordUsage {
  
  int studentRegisterNumber = 0;
  
  String studentFirstName;
  
  String studentLastName;
  
  PL06ThisKeywordUsage(){
    System.out.println("This is triggered from the default constructor");
  }
  
  /**
   * Parameterized Constructor is used to set the class instance variables while object creation.
   * 
   * @param studentRegisterNumber
   * @param studentFirstName
   * @param studentLastName
   */
  PL06ThisKeywordUsage(int studentRegisterNumber,String studentFirstName,String studentLastName){
    this(); // Here this keyword is used to refer current class default constructor
    this.studentRegisterNumber = studentRegisterNumber;
    this.studentFirstName = studentFirstName;
    this.studentLastName = studentLastName;
  }
  
  /**
   * This method is used to set the contends of the class level fields.
   * 
   */
  public void displayClassFields() {
    System.out.println("The value of studentRegisterNumber :: "+studentRegisterNumber);
    System.out.println("The value of studentFirstName :: "+studentFirstName);
    System.out.println("The value of studentLastName :: "+studentLastName);
  }
  
  /**
   * This method is used to set the contends of the class level fields.
   */
  public void displayClassLevelFields() {
    System.out.println("The value of studentRegisterNumber :: "+studentRegisterNumber);
    // Here this keyword is used to refer and call current class methods.
    this.displayFirstNameLastName();
  }
  
  /**
   * This method is used to set the contends of the class level fields.
   */
  public void displayFirstNameLastName() {
    System.out.println("The value of studentFirstName :: "+studentFirstName);
    System.out.println("The value of studentLastName :: "+studentLastName);
  }
  
  public static void main(String args[]) {
    
    // Usage 1 : USE THIS KEYWORD TO REFER CURRENT CLASS INSTANCE VARAIBLES. 
    PL06ThisKeywordUsage studentDetailsInstance = null;
    studentDetailsInstance = new PL06ThisKeywordUsage(1,"Harry","Potter");
    studentDetailsInstance.displayClassFields();
    StringUtils.initiateSeparators("-", 50);
    
    
    // Usage 2 : USE THIS KEYWORD TO REFER CURRENT CLASS METHOD. 
    studentDetailsInstance = new PL06ThisKeywordUsage(1,"Ron","Weasly");
    studentDetailsInstance.displayClassLevelFields();
    StringUtils.initiateSeparators("-", 50);
    
    // Usage 3 : USE THIS KEYWORD TO REFER CURRENT CLASS CONSTRUCTOR. 
    studentDetailsInstance = new PL06ThisKeywordUsage(1,"Hermoinie","Granger");
    studentDetailsInstance.displayClassFields();
  }

}
