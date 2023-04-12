package com.dhivya.code.playground;

public class PL04TypeCastingVariables {

	public static void main(String[] args) {
		// when defining a flat variable by a static value its essential toa ppend f at the end of the value to denote its float
		float firstFloatVaraible = 100.245f;
		// Now when we try to assign a float value to Integr value it wilkl give a compile time error,
		// So we have to type case the variable.
		int firstIntVariable = (int)firstFloatVaraible;
		System.out.println("Printing :: firstFloatVaraible :: "+firstFloatVaraible);
		System.out.println("Printing :: firstIntVariable :: "+firstIntVariable);
		
	}

}
