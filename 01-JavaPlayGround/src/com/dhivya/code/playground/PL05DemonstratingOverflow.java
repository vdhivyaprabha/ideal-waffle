package com.dhivya.code.playground;

public class PL05DemonstratingOverflow {

	public static void main(String[] args) {
		
		int firstIntVariable = 130;
		// Now we are trying to cast the Integer value to Byte
		// But we know the range for Byte is -128 to 127
		byte firstByterVariable = (byte)firstIntVariable;
		System.out.println("Displaying firstIntVariable :: "+firstIntVariable);
		System.out.println("Displaying firstByterVariable :: "+firstByterVariable);
	}

}
