package com.dhivya.code.oops;

import com.dhivya.code.common.StringUtils;

/**
 * @author Dhivyaprabha Vijayakumaran
 * 
 * This class is used to demonstrate the Components of the java Object and Classes.
 *
 */
public class PL01StudentDetails {
  
  // Field Definition - Registration Identifier of the Student.
  int registartionId;
  
  //Field Definition - First Name of the Student.
  String firstName;
  
  //Field Definition - Last Name of the Student.
  String lastName;
  
  /**
   * Empty Constructor
   */
  PL01StudentDetails(){
    
  }
  
  /**
   *  This is a Demonstration of the parameterized Constructor to set and pass the values to the class
   *  Objects during instance creation.
   *  
   * @param rId registration number of the Student
   * @param fName First Name of the Student 
   * @param lName LAst name of the Student.
   */
  PL01StudentDetails(int rId,String fName,String lName){
    registartionId = rId;
    firstName = fName;
    lastName = lName;
  }
  
  /**
   * Set the class level fields through Methods, Pass the parameters to the methods and set the class level fields.
   * 
   * @param rId registration id of the Student
   * @param fName First Name of the Student
   * @param lName Last name of the Student
   */
  public void setField(int rId,String fName,String lName) {
    registartionId = rId;
    firstName = fName;
    lastName = lName;
  }
  
  /**
   * Function used to display the field level details of the Student class.
   */
  public void displayInformationsInFields() {
    System.out.println("First Name of the Student is :: "+firstName);
    System.out.println("Last Name of the Student is :: "+lastName);
    System.out.println("Registration Id of the Student is :: "+registartionId);
  }
  
  /**
   * Function used to display the field level details of the Student class.
   */
  public void displayInformationsInFields(PL01StudentDetails studentDetails) {
    System.out.println("First Name of the Student is :: "+studentDetails.firstName);
    System.out.println("Last Name of the Student is :: "+studentDetails.lastName);
    System.out.println("Registration Id of the Student is :: "+studentDetails.registartionId);
  }
  

  public static void main(String[] args) {
    
    // Creating an Object or instance of the Student Details suing the class "PL01StudentDetails"
    PL01StudentDetails steudentDetailsInstance = new PL01StudentDetails();
    
    // Accessing the student details using the object created,We have just defined the fields 
    // from the class , we have not set values so the field values will be empty
    System.out.println(steudentDetailsInstance.firstName);
    System.out.println(steudentDetailsInstance.lastName);
    System.out.println(steudentDetailsInstance.registartionId);
    
    // There are multiple ways to Initialize the values to the object created
    // Approach 1
    // Initialize through objectss
    StringUtils.initiateSeparators("*", 50);
    PL01StudentDetails firstStudent = new PL01StudentDetails();
    firstStudent.firstName = "Harry";
    firstStudent.lastName = "Potter";
    firstStudent.registartionId = 1;
    firstStudent.displayInformationsInFields(firstStudent);
    PL01StudentDetails secondStudent = new PL01StudentDetails();
    secondStudent.firstName = "Hermoinie";
    secondStudent.lastName = "Granger";
    secondStudent.registartionId = 2;
    secondStudent.displayInformationsInFields(secondStudent);
    PL01StudentDetails thirdStudent = new PL01StudentDetails();
    thirdStudent.firstName = "Ron";
    thirdStudent.lastName = "Weasley";
    thirdStudent.registartionId = 3;
    thirdStudent.displayInformationsInFields(thirdStudent);
    
    // Approach 2
    // Set through method Parameters
    StringUtils.initiateSeparators("*", 50);
    steudentDetailsInstance.setField(5, "Draco", "Malfoy");
    steudentDetailsInstance.displayInformationsInFields();
    steudentDetailsInstance.setField(6, "Neville", "Longbottom");
    steudentDetailsInstance.displayInformationsInFields();
    steudentDetailsInstance.setField(7, "Luna", "Lovegood");
    steudentDetailsInstance.displayInformationsInFields();
    
    
    // Approach 3
    // Set the field values through constructors.
    StringUtils.initiateSeparators("*", 50);
    PL01StudentDetails paramConstInstance1 = new PL01StudentDetails(8,"Fred","Weasley");
    paramConstInstance1.displayInformationsInFields();
    PL01StudentDetails paramConstInstance2 = new PL01StudentDetails(9,"George","Weasley");
    paramConstInstance2.displayInformationsInFields();
    PL01StudentDetails paramConstInstance3 = new PL01StudentDetails(10,"Ginny","Weasley");
    paramConstInstance3.displayInformationsInFields();
  }

}
