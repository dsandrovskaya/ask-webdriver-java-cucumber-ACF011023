package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import java.sql.SQLOutput;

public class MyStepdefs {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello World");
    }

    @Given("I print {string}")
    public void iPrint(String sText) {
        System.out.println(sText);
    }

    @Then("I print {string} and {string}")
    public void iPrintAnd(String sText1, String sText2) {
        //Good Day!
        String sSpace = " ";
        String sExMark = "!";
        System.out.println(sText1+sText2);
        System.out.println(sText1.toUpperCase() + sSpace + sText2 + sExMark);
        System.out.println(sText1.toUpperCase()+sSpace+sText2.toLowerCase()+sExMark);
    }

    @Given("I calculate results with {int} and {int}")
    public void iCalculateResultsWithAnd(int iNum1, int iNum2) {
        int iSum = iNum1 + iNum2;
        int iDif = iNum1 - iNum2;
        int iPro = iNum1*iNum2;
        float iDiv = iNum1/iNum2;
        System.out.println(iNum1 + "+" + iNum2 + "="+iSum);
        System.out.println("the difference btw "+ iNum1 + " and "+ iNum2 + " is "+iDif);
        System.out.println(iPro);
        System.out.println("Division of these numbers is " + iDiv);
    }

    @Then("I identify the number {int} is odd or even")
    public void iIdentifyTheNumberIsOddOrEven(int iNum3) {
        if(iNum3%2 == 0){
            System.out.println(iNum3 + "is even number");
        }
        else {
            System.out.println(iNum3 + " is odd number");
    }
}

    @Given("I want to print all days of the week")
    public void iWantToPrintAllDaysOfTheWeek() {
        String[] aDaysOfWeek ={"Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"};
        int[] aDateOfWeek ={12,13,14,15,16,17,18};
        System.out.println(aDaysOfWeek[3]);
        for (String element:aDaysOfWeek) {
            System.out.println(element);
        }
        for (int i=0;i<aDateOfWeek.length; i++)
        {
            System.out.println(aDaysOfWeek[i] + " "+ aDateOfWeek[i]);

}
}

    @Given("I convert {int} foot to centimeters")
    public void iConvertFootToCentimeters(double feet) {
        double centimeters = feet * 30.48;
        System.out.println(feet + " feet" + " is equal to " + centimeters + " centimeters");

    }

    @And("I convert {int} Us gallon to liters")
    public void iConvertUsGallonToLiters(double gallon) {
        double liters = gallon * 3.78541;
        System.out.println(gallon + " gallons is equal to " + liters + " liters");
    }

    @And("I convert {int} Celsius to Farenheit")
    public void iConvertCelsiusToFarenheit(double celsius) {
        double farenheit = (celsius * 9/5) +32;
        System.out.println(celsius + " degrees celcius is equal to " + farenheit + " farenheit");
    }

    @Given("I check if number {int} is odd or even")
    public void iCheckIfNumberIsOddOrEven(int number) {
        if(number%2 == 0){
            System.out.println("number" + number + " is even number");
        }
        else {
            System.out.println("number" + number + " is odd number");
    }
}

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int myGrade) {
        if (myGrade>=90 && myGrade<=100) {
            System.out.println("You passed with Grade A");
        } else if (myGrade>=80 && myGrade<=89) {System.out.println("You passed with Grade B");
        } else if (myGrade>=70 && myGrade<=79) {System.out.println("You passed with Grade C");
        } else if (myGrade>=60 && myGrade<=69) {System.out.println("You passed with Grade D");
        } else if (myGrade>=0 && myGrade<=59) {
            System.out.println("You passed with Grade F");
        }
    }




    @Given("I find the cost of {int} pounds of {string}")
    public void iFindTheCostOfPoundsOf(int pounds, String fruit) {
        switch (fruit) {
            case "apples":
                double applesForPound = 5.15;
                double applesPrice = applesForPound * pounds;
                System.out.println("cost of apples = " + "$" + applesPrice);
                break;
            case "cherries":
                double cherriesForPound = 6.32;
                double cherriesPrice = cherriesForPound * pounds;
                System.out.println("cost of cherries = " + "$" + cherriesPrice);
                break;
            case "plums":
                double plumsForPound = 12.45;
                double plumsPrice = plumsForPound * pounds;
                System.out.println("cost of plums = " + "$" + plumsPrice);
                break;
            case "grapefruits":
                double grapefruitsForPound = 19.56;
                double grapefruitsPrice = grapefruitsForPound * pounds;
                System.out.println("cost of grapefruits = " + "$" + grapefruitsPrice);
                break;
            case "oranges":
                double orangesForPound = 5.78;
                double orangesPrice = orangesForPound * pounds;
                System.out.println("cost of oranges = " + "$" + orangesPrice
                );
                break;
            default:
                System.out.println("This product is unavailable");
    }
}


    @Given("I want to print  days of the week")
    public void iWantToPrintDaysOfTheWeek() {
        String[] week ={"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for (int i = 0; i < week.length; i++) {
            System.out.println(week[i]);
    }
}}



