package com.dhivya.code.oops;

import com.dhivya.code.common.StringUtils;

/**
 * This class is used to demonstrate the basic banking using the concepts we have learned so far.
 * 
 * @author Dhivyaprabha Vijayakumaran
 *
 */
public class PL04BasicBanking {
  
  int totalbalance = 0;
  
  int accountNumber = 0;
  
  String accountHolderName = "";
  
  /**
   * This Method is used 
   * @param actNum
   * @param holderName
   */
  public void createAccount(int actNum,String holderName) {
    accountNumber = actNum;
    accountHolderName = holderName;
  }
  
  /**
   * @param accountId
   * @param amountToDeposit
   */
  public void depositToAccount(int accountId, int amountToDeposit) {
    if (accountId == accountNumber) {
      totalbalance = totalbalance + amountToDeposit;
      System.out.println("The Updated balance of the User is :: "+totalbalance);
    }
  }
  
  /**
   * @param accountId
   * @param amountToWidraw
   */
  public void widrawFromAccount(int accountId,int amountToWidraw) {
    if (accountId == accountNumber && amountToWidraw > totalbalance) {
      System.out.println("Insufficient Funds to Widraw from Account");
      System.out.println("The Total balance of the User is :: "+totalbalance);
    }else if (accountId == accountNumber && (amountToWidraw < totalbalance || totalbalance == amountToWidraw)) {
      totalbalance = totalbalance - amountToWidraw;
      System.out.println("Amount Widrawn from the Account is :: "+amountToWidraw);
      System.out.println("The Updated balance of the User is :: "+totalbalance);
    }else if(accountId != accountNumber) {
      System.out.println("We cannot find mactching Account Details to Process your Transaction");
    }
  }

  public static void main(String[] args) {
    PL04BasicBanking bankingInstance = new PL04BasicBanking();
    
    int accountId = 141;
    // Create a bank account using account details
    bankingInstance.createAccount(accountId, "Hermoinie");
    
    // User Deposit Scenario - User comes and Deposits 50000Rs in the account.
    bankingInstance.depositToAccount(accountId,50000);
    StringUtils.initiateSeparators("-", 25);
    
    // User Waders Amount Less than his total balance
    bankingInstance.widrawFromAccount(accountId,10000);
    StringUtils.initiateSeparators("-", 25);
    
    // User Waders Amount More than his total balance
    bankingInstance.widrawFromAccount(accountId,100000);
    StringUtils.initiateSeparators("-", 25);
  }

}
