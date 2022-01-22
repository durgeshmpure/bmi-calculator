import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;

  CalculatorBrain(this.weight,this.height);


  String CalculateBMI(){
    double bmi = weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }
  String getresult(){
    double bmi = weight/pow(height/100,2);
    bmi.toStringAsFixed(1);
    if(bmi>=25.0){
      return 'Overweight';
    }else if (bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String interpretation(){
    double bmi = weight/pow(height/100,2);
    bmi.toStringAsFixed(1);
    if(bmi>=25.0){
      return 'You have a higher than normal body weight.Try to exercise more';
    }else if (bmi>18.5){
    return 'You have a normal body weight.Good job!';
    }else{
    return 'You have a lower than normal body weight.You can eat a bit more';
    }

  }


}