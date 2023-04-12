package com.dhivya.code.singleinheritance;

public class Animal {
  
  public Animal(){
    
  }

  public Animal(boolean vegetarian, String foodAnimalEats, int numberOfLegs) {
    super();
    this.vegetarian = vegetarian;
    this.foodAnimalEats = foodAnimalEats;
    this.numberOfLegs = numberOfLegs;
  }

  private boolean vegetarian;

  private String foodAnimalEats;

  private int numberOfLegs;

  /**
   * @return the vegetarian
   */
  public boolean isVegetarian() {
    return vegetarian;
  }

  /**
   * @return the foodAnimalEats
   */
  public String getFoodAnimalEats() {
    return foodAnimalEats;
  }

  /**
   * @return the numberOfLegs
   */
  public int getNumberOfLegs() {
    return numberOfLegs;
  }

  /**
   * @param vegetarian the vegetarian to set
   */
  public void setVegetarian(boolean vegetarian) {
    this.vegetarian = vegetarian;
  }

  /**
   * @param foodAnimalEats the foodAnimalEats to set
   */
  public void setFoodAnimalEats(String foodAnimalEats) {
    this.foodAnimalEats = foodAnimalEats;
  }

  /**
   * @param numberOfLegs the numberOfLegs to set
   */
  public void setNumberOfLegs(int numberOfLegs) {
    this.numberOfLegs = numberOfLegs;
  }

}
