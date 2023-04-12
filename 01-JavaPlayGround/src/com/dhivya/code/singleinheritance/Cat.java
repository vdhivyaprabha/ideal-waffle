package com.dhivya.code.singleinheritance;

public class Cat extends Animal{

  private String color;

  public Cat(boolean vegetarian, String food, int legs) {
    super(vegetarian, food, legs);
    this.color="White";
  }

  public Cat(boolean veg, String food, int legs, String color){
    super(veg, food, legs);
    this.color=color;
  }

  public String getColor() {
    return color;
  }

  public void setColor(String color) {
    this.color = color;
  }

}
N