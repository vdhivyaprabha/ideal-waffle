package com.dhivya.code.oops;

import com.dhivya.code.common.StringUtils;

public class PL03MultipleObjectsSameType {
  
  int lengthOfShape;
  
  int breadthOfShape;
  
  public void setParameters(int localLengthOfShape,int localBreadthOfShape) {
    lengthOfShape = localLengthOfShape;
    breadthOfShape = localBreadthOfShape;
  }
  
  public void calculateAreaOfShape() {
    System.out.println("The value of lengthOfShape :: "+lengthOfShape);
    System.out.println("The value of breadthOfShape :: "+breadthOfShape);
    int calculatedArea = lengthOfShape * breadthOfShape;
    System.out.println("The Calculated Area of Shape is :: "+calculatedArea);
  }
  
  public static void main(String args[]) {
    PL03MultipleObjectsSameType instance1 = new PL03MultipleObjectsSameType(),instance2 = new PL03MultipleObjectsSameType();
    instance1.setParameters(5, 4);
    instance1.calculateAreaOfShape();
    StringUtils.initiateSeparators("-", 25);
    
    // IUnstance2 uses the same type as instance1 Object and Executes the method.
    instance2.setParameters(6, 4);
    instance2.calculateAreaOfShape();
    StringUtils.initiateSeparators("-", 25);
    
    
  }

}
