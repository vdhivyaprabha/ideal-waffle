package com.dhivya.code.playground;

public class PL07PlayWithOperators {
	
	public static void demonstationOfUnaryOperators(int firstIntVariable,int secondIntvariable) {
	  boolean isNegativeInteger = true;
	  System.out.println("firstIntVariable :: "+firstIntVariable);
	  System.out.println("secondIntvariable :: "+secondIntvariable);
	  System.out.println("firstIntVariable++ :: "+ firstIntVariable++);
	  System.out.println("++firstIntVariable :: "+ ++firstIntVariable);
	  System.out.println("secondIntvariable-- :: "+ secondIntvariable--);
	  System.out.println("--firstIntVariable :: "+ --firstIntVariable);
	  // ~ applied on Integer values
	  System.out.println("~ applied on firstIntVariable :: "+~firstIntVariable);
	  System.out.println("~ applied on secondIntvariable :: "+~secondIntvariable);
	  // !(Not Operator) applied on Boolean values
	  System.out.println(" Not Operator applied on isNegativeInteger :: "+!isNegativeInteger);
	}
	
	public static void demonstationOfArthimaticOperators(int firstIntVariable,int secondIntvariable) {
	  // Demonstration of the Assignment Operator , Here value is assigned to variable using "="
	  int thirdVariable = 30;
	  System.out.println("firstIntVariable + secondIntvariable :: "+firstIntVariable + secondIntvariable);	
	  System.out.println("firstIntVariable - secondIntvariable :: "+(firstIntVariable - secondIntvariable));	
	  System.out.println("firstIntVariable * secondIntvariable :: "+firstIntVariable * secondIntvariable);	
	  System.out.println("firstIntVariable % secondIntvariable :: "+firstIntVariable % secondIntvariable);	
	  System.out.println("firstIntVariable / secondIntvariable :: "+firstIntVariable / secondIntvariable);
	  
	  // Left Shift operations
	  System.out.println("firstIntVariable << secondIntvariable :: "+(firstIntVariable << secondIntvariable));
	  // Right Shift operations
	  System.out.println("firstIntVariable >> secondIntvariable :: "+(firstIntVariable >> secondIntvariable));
	  // Right Shift operations
	  System.out.println("firstIntVariable >>> secondIntvariable :: "+(firstIntVariable >>> secondIntvariable));
	  
	  // Demonstration of AND and OR Operators
	  System.out.println("firstIntVariable > secondIntvariable && thirdVariable < firstIntVariable :: "+(firstIntVariable > secondIntvariable && thirdVariable < firstIntVariable));
	  System.out.println("firstIntVariable > secondIntvariable || thirdVariable < firstIntVariable :: "+(firstIntVariable > secondIntvariable || thirdVariable < firstIntVariable));
	  
	  // Usage of Ternary operators
	  int findLargest = firstIntVariable > secondIntvariable ? firstIntVariable : secondIntvariable;
	  System.out.println("The Largest Integer determined using Ternary operator is :: "+findLargest);
	}
	
	//TODO Accept parameter as symbol and change the logic to generate separators Dynamically
	public static void generateSeparators() {
	  System.out.println("-----------------------------------------------------------------------------------");
	}

	public static void main(String[] args) {
	  int firstvariable = 10;
	  int secondVaribale = 20;
	  
	  generateSeparators();
	  
	  // Function defined to demonstrate how Unary Operators works on Integers
	  demonstationOfUnaryOperators(firstvariable, secondVaribale);
	  
	  generateSeparators();
	  
	  // Function defined to demonstrate how Arithmetic Operators works on Integers
	  demonstationOfArthimaticOperators(20,10);
	  
	  generateSeparators();
	  
	  
	}

}
