package com.dhivya.code.playground;

public class PL02VariablesDefinition {

  // Definition of the Global Static Variable
  static int crossVaraible = 100;

  public static void demonstrateVariables() {
    // Definition of the local variable
    int crossVaraible = 200;
    System.out.println("The value of the crossVaraible inside demonstrateVariables() is :: " + crossVaraible);
  }

  public static void main(String[] args) {

    // Definition of the Integer Variable
    int firstVariable = 20;

    // Definition of the second variable
    int secondVariable = 30;

    // Sum Up instances to display as a third variable
    int result_instance = firstVariable + secondVariable;
    System.out.println("Printing the Sum of two Variables :: " + result_instance);

    // This will retrieve the global static variable which is defined as part of the
    // class/.
    System.out.println("The value of the crossVaraible from Main is :: " + crossVaraible);
    // This will display the local variuable defined inside the method , Because the
    // local variable
    // overrides the global variable when used insuide the method
    demonstrateVariables();

  }

}
