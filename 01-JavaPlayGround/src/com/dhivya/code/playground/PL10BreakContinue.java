package com.dhivya.code.playground;

import com.dhivya.code.common.StringUtils;

public class PL10BreakContinue {
  
  /**
   * This Method is used in demonstration of the Break statement in the loop , we
   * can see in the below method when a loop is getting iterated and when it
   * reaches a specific statement how does the break statement impact the loop.
   */
  public static void demonstrationOfBreak() {
    int demonstationCount = 10;
    int breakIndex = 4;
    for(int element=0;element<=demonstationCount;element++) {
      System.out.println("Element :: "+element );
      if(element == breakIndex) {
        System.out.println("Loop is going to break at element :: "+element);
        break;
      }
    }
  }
  
  /**
   * This method is used in the demonstration of the continue statement in the loop.
   * we have used a for loop to demonstrate how the continue statement is impacting the 
   * loop.
   */
  public static void demonstrationOfContinue() {
    int demonstationCount = 10;
    int breakIndex = 4;
    for(int element=0;element<=demonstationCount;element++) {
      System.out.println("Element :: "+element );
      if(element == breakIndex) {
        System.out.println("Loop is going to continue at element :: "+element);
        continue;
      }
      System.out.println("Executed :: "+element);
    }
  }

  public static void main(String[] args) {
    
    // Demonstration of the break statement , use a for loop to iterate numbers and when it reaches a specific number 
    // we are trying to break the loop check what happens when we break the loop. Interesting !!!
    demonstrationOfBreak();
    StringUtils.initiateSeparators("*", 50);
    
    // Demonstration of the break statement , use a for loop to iterate numbers and when it reaches a specific number 
    // we are trying to use the continue statement in the loop check what happens when we break the loop. Even More Interesting !!!
    demonstrationOfContinue();
  }

}
