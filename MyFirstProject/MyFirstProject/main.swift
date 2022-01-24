//
//  main.swift
//  MyFirstProject
//
//  Created by Владимир Белобродский on 24.01.2022.
//

import Foundation

print("Мое первое консольное приложение на Swift!")

print("Введите первое число");
var a = readLine()

print("Введите второе число");
var  b = readLine()

var result = sum(a,b)
print("Результат сложения  - \(result)")

let sum2: (String?,String?) -> Int = {return (Int($0!)! + Int($1!)!)}
result = sum2(a,b)
print("Результат сложения  - \(result)")

let sum3: (String?,String?) -> Int = {(Int($0!)! + Int($1!)!)}
result = sum3(a,b)
print("Результат сложения  - \(result)")


let sum4 = {(Int($0!)! + Int($1!)!)}
result = sum4(a,b)
print("Результат сложения  - \(result)")
