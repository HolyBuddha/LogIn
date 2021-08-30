//
//  User.swift
//  LogIn
//
//  Created by Vladimir Izmaylov on 29.08.2021.
//

import Foundation

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getInfoAboutUser() -> User {
        User(username: "User", password: "Password", person: Person(name: "Владимир", surname: "Измайлов", age: 33, hobbies: Hobbies.photography))
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobbies: Hobbies
}

enum Hobbies: String {
    case sport = "Я люблю делать зарядку и бегать по утрам."
    case photography = "Я люблю фотографировать, в частности людей и пейзажи."
    case music = "Я люблю играть на гитаре."
    case games = "Я люблю видеоигры."
}


