package com.dhivya.code.common;

public class StringUtils {

  //initiate line separators
  public static void initiateSeparators(String sysmbolToIterate, int iteratiuonCount) {
    if (sysmbolToIterate != null && !"".equalsIgnoreCase(sysmbolToIterate)) {
      for (int index = 0; index <= iteratiuonCount; index++) {
        System.out.print(sysmbolToIterate);
      }
      System.out.println();
    }
  }

}
