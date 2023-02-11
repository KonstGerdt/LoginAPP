//
//  User.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 30.01.2023.
//

import UIKit


struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "q",
            password: "q",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname:String
    let middlename: String
    let bio: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Константин",
            surname: "Дуркин",
            middlename: "Иванович",
            bio: """
Меня зовут Дуркин Константин, я родился в городе Сыктывкар, столица Республики  Коми, в 2001 году
Учился в колледже "СГПК" на преподавателя дополнительного образования в области техническо творчества.
Бросил свою учебу на 3 курсе обучения в 2020 году, так как понял, что хочу заниматься бизнесом, а
именно бизнесом  в табачной сфере. Но после событий в мире в феврале 2022 года
мы с девушкой решили переехать в другую страну, после переезда я долго думал чем я хочу заниматься
на данном этапе жизни и загорелся изучением
программирования, после долгих поисков различных школ программирования мой выбор пал на SwiftBook:)
            
            
"""
        )
    }
}




