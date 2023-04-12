package com.dhivya.code.playground;

public class PL06DataTypeDemonstration {

	public static void main(String[] args) {
		
		// Definition of Boolean variables , It takes value true/false
		boolean firstBooleanVariable = false;
		System.out.println("Value of firstBooleanVariable is :: "+firstBooleanVariable);
		
		// Definition of the Byte data types , the Byte takes the value in the range below
		// minimum value is -128 and maximum value is 127
		byte firstByteVariable = 20;
		byte secondByteVariable =  126; // When you define a value out of the range it throws Compile Time error
		System.out.println("Value of firstByteVariable is :: "+firstByteVariable);
		System.out.println("Value of secondByteVariable is :: "+secondByteVariable);
		
		// Definition of Short Data types minimum value is -32,768 and maximum value is 32,767
		short firstShortVariable = 5000;
		short secondShortVariable = -6000; 
		System.out.println("Value of firstShortVariable is :: "+firstShortVariable);
		System.out.println("Value of secondShortVariable is :: "+secondShortVariable);
		
		// Definition of the integer datatype, takes value (-2^31) to (2^31)
		int firstIntVariable = 10000;
		int secondIntVariable = -20000;
		System.out.println("Value of firstIntVariable is :: "+firstIntVariable);
		System.out.println("Value of secondIntVariable is :: "+secondIntVariable);
	}

}
