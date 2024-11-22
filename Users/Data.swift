//
//  Data.swift
//  Users
//
//  Created by joe on 22.11.2024.
//

import Foundation

class Data: ObservableObject {
    @Published var users: [User] = [
        User(firstName: "Joe", lastName: "Smith", age: 17, gender: .male),
        User(firstName: "Jane", lastName: "Doe", age: 21, gender: .female),
        User(firstName: "John", lastName: "Snow", age: 22, gender: .male),
        User(firstName: "Sally", lastName: "Smith", age: 16, gender: .female),
        User(firstName: "Mike", lastName: "Jones", age: 24, gender: .male),
        User(firstName: "Adam", lastName: "Johnson", age: 26, gender: .male),
    ]
}

class User: Identifiable {
    let id: UUID = UUID()
    
    var firstName: String
    var lastName: String
    var age: Int
    var gender: Gender
    
    init(firstName: String, lastName: String, age: Int, gender: Gender) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
}

enum Gender: String, Codable {
    case male, female
}
