package com.dhivya.code.playground;

public class PL03VariableWidening {

	public static void main(String[] args) {
		int firstIntVaraible = 100;
		float firstFloatVariable = firstIntVaraible;
		
		// The same variable printing as Integers
		System.out.println("Printing the Integer Variable :: "+firstIntVaraible);
		
		// The same variable Printing as Float , Widening the Integer as Float
	  System.out.println("Printing the Float Variable :: "+firstFloatVariable);
	}

}
