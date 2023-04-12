package com.dhivya.code.oops;

import com.dhivya.code.common.StringUtils;

public class PL02AnonymousObjects {
  
  /**
   * Empty Constructor definition
   */
  PL02AnonymousObjects(){
    System.out.println("This is triggered from the Empty Constructor");
  }
  
  /**
   * 
   * Constructor Method to pass the required parameters and do the eveluation.
   * 
   * @param firstElement the first input parameter to the constructor.
   * @param secondElement the second input element to the constructor
   * @param caculationType what calculation should be done as part of the method.
   */
  PL02AnonymousObjects(int firstElement, int secondElement, String caculationType) {
    int calculationResult = 0;
    if (caculationType != null && "addition".equalsIgnoreCase(caculationType)) {
      calculationResult = firstElement + secondElement;
    } else if ("product".equalsIgnoreCase(caculationType)) {
      calculationResult = firstElement * secondElement;
    }
    System.out.println(
        "The Operation Applied on Two Elements is :: " + caculationType + " and the result is :: " + calculationResult);
  }
  
  public static void main(String[] args) {
    int firstElement = 25;
    int secondElement = 35;
    
    // Create an Anonymous Object.
    new PL02AnonymousObjects();
    StringUtils.initiateSeparators("-", 50);
    // Create Anonymous Object and Pass the required values to the constructor.
    new PL02AnonymousObjects(firstElement,secondElement,"addition");
    StringUtils.initiateSeparators("-", 50);
    new PL02AnonymousObjects(firstElement,secondElement,"product");
  }

}
