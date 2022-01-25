//
//  main.swift
//  SomeTestsFuard
//
//  Created by Владимир Белобродский on 25.01.2022.
//

import Foundation

print("Hello, World!")




var isExit = false


var myInt:Int? = 777  //   это значение пор умолчанию
myInt = Int(readLine()!) ?? 888  //такой знак подставить 888 если опционал будет равен nil
print("попыта извлечения \(myInt)")

print("Type 0 for exit")
repeat
{
    //тут у myInt уже своя область видимостиИи
    guard let myInt = Int(readLine()!) else {
    print("что-то пошло не так")
    continue
}

    
    if myInt == 0 {isExit=true}
    
}
while !isExit
