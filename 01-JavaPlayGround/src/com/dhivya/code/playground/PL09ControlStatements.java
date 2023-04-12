package com.dhivya.code.playground;

import com.dhivya.code.common.StringUtils;

public class PL09ControlStatements {

  public static void demonstationOfStatements(int firstVaraible, int secondVaraible) {

    // Demonstration if statements.
    System.out.println("Demonstration if statements.");
    if (secondVaraible > firstVaraible) {
      System.out.println("The second varaible is the greatest");
    }

    // Demonstration of if else statements
    StringUtils.initiateSeparators("*", 50);
    System.out.println("Demonstration of if else statements");
    if (secondVaraible > firstVaraible) {
      System.out.println("The second varaible is the greatest");
    } else {
      System.out.println("The second varaible is NOT the greatest");
    }

    // Demonstration of if else if statements
    StringUtils.initiateSeparators("*", 50);
    System.out.println("Demonstration of if else if statements");
    if (secondVaraible > firstVaraible) {
      System.out.println("The second varaible is the greatest");
    } else if (firstVaraible > secondVaraible) {
      System.out.println("The first varaible is the greatest");
    } else {
      System.out.println("Both Variables are Equal");
    }

    // Demonstration of Switch statements
    StringUtils.initiateSeparators("*", 50);
    System.out.println("Demonstration of Switch statements");
    int input_number = 0;
    switch (input_number) {
    case 1:
      System.out.println("User has selected the first option");
      break;
    case 2:
      System.out.println("User has selected the second option");
      break;
    default:
      System.out.println("User has selected the default option");
    }
  }

  public static void demonstrationOfLoopStatements() {

    // demonstration of for loop
    StringUtils.initiateSeparators("*", 50);
    int demonstrationCount = 10;
    System.out.println("Demonstration of the For Loop");
    for (int index = 0; index <= demonstrationCount; index++) {
      System.out.println("Element :: " + index);
    }

    // Demonstration of the while loop.
    StringUtils.initiateSeparators("*", 50);
    int index = 0;
    System.out.println("Demonstration of the While Loop");
    while (index < demonstrationCount) {
      System.out.println("Element :: " + index);
      index = index + 1;
    }

    // Demonstration of the do while loop.
    index = 0;
    StringUtils.initiateSeparators("*", 50);
    do {
      System.out.println(index);
      index = index + 1;
    } while (index <= demonstrationCount);
    
    
  }

  public static void main(String[] args) {

    int firstVaraible = 34;
    int secondvariable = 45;

    // Demonstration of the statements
    demonstationOfStatements(firstVaraible, secondvariable);

    // Demonstration of the loops.
    demonstrationOfLoopStatements();

  }

}
