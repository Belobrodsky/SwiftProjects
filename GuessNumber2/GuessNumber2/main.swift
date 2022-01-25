//
//  main.swift
//  GuessNumber2
//
//  Created by Владимир Белобродский on 25.01.2022.
//

import Foundation



print("My Game - Guess Number")

print("введите число от 1 до 50")

var goal = UInt8.random(in: 1...50)

var attempCount = 0

var isWin = false;




repeat
{
    guard let intA = Int(readLine()!) else {
        print("Вы ввели некоррктное число ")
        continue
    }
    

    if  intA<goal {print("Ваше число меньше")}
    
    else if intA>goal { print("Ваше число больше") }
    
    else
    {
        print("Вы угадали")
        isWin = true
    }
    
    attempCount+=1
}
while !isWin

print("Поздравляем, Вы угадали с \(attempCount) попыток")





/*
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
*/
