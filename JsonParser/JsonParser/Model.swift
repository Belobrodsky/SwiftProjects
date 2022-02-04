//
//  Model.swift
//  JsonParser
//
//  Created by Владимир Белобродский on 04.02.2022.
//

import Foundation

struct Lesson: Decodable
{
    let id: Int
    let name: String
    let date: String
    let image: String
    let link: String
}
