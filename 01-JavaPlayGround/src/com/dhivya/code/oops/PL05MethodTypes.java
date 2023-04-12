package com.dhivya.code.oops;

import com.dhivya.code.common.StringUtils;

/**
 * 
 * This method is intended to demonstrate the functionality of the predefined
 * method and user defined methods , The predefined methods are build as part of
 * the library and the same functionality is achieved using the user defined
 * methods.
 * 
 * @author Dhivyaprabha Vijayakumaran
 *
 */
public class PL05MethodTypes {
  
  /**
   * Method Create to demonstrate the functionality of the Predefined Methods, The predefined method 
   * which is used for the demonstration is Max Method , Its used to finc the maximum of two Elements
   * Provided a input.
   * 
   * @param inpoutNumber1 First Input element
   * @param inputNumber2 SecondInput Element
   */
  public void demonstatationOnPredefinedMethods(int inpoutNumber1,int inputNumber2) {
    System.out.println("The Maximum of the two numbers is :: "+Math.max(inpoutNumber1, inputNumber2));
  }
  
  /**
   * Method Created to demonstate the functionality of the userdefined method , The same functionality which is 
   * achieved through predefined methods has been done using user defined methods.
   * 
   * @param firstInputNumber
   * @param secondINputNumber
   */
  public void demonstrationOfuserdefinedMethod(int firstInputNumber,int secondINputNumber) {
    int result = 0;
    if (firstInputNumber > secondINputNumber) {
      result = firstInputNumber;
    }else if (secondINputNumber > firstInputNumber) {
      result = secondINputNumber;
    }else {
      result = firstInputNumber;
    }
    System.out.println("The Maximum of the two numbers is :: "+result);
  }
  
  public static void main(String args[]) {
    PL05MethodTypes methodTypesInstance = new PL05MethodTypes();
    methodTypesInstance.demonstatationOnPredefinedMethods(45,78);
    StringUtils.initiateSeparators("*", 50);
    methodTypesInstance.demonstrationOfuserdefinedMethod(45,78);
  }

}
