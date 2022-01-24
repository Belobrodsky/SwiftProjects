//
//  main.swift
//  guessNumber
//
//  Created by Владимир Белобродский on 24.01.2022.
//

import Foundation

print("My Game - Guess Number")

print("введите число от 1 до 50")
var a = readLine()

var goal = UInt64.random(in: 1...50)

var attempCount = 0

var intA: Int

if Int(a!) != nil {
    
 intA = Int(a!)!
    
    var fl=true;
    
while intA != goal {
   attempCount+=1
    if intA<goal {
        print("Ваше число \(intA). Оно меньше. Повторите попытку ввода")
    } else {
     print("Ваше число - \(intA). Оно больше . Повторите попутку ввода")
    }
    
a = readLine()
    
    if Int(a!) != nil {
        intA = Int(a!)!    }
    else { print("Введенное число не корректно"); fl=false; break;}
    
    
}
    if fl {print("УРА!!! Вы угадали с \(attempCount) попытки")}

    
} //if !nil
else
{
    print("Введенное число не корректно")
}
