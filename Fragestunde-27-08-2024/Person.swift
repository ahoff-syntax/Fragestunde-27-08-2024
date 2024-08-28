//
//  Person.swift
//  Fragestunde-27-08-2024
//
//  Created by Anna Hoff on 27.08.24.
//

import Foundation

let currentYear: Int = 2024

struct Person {
    let id = UUID()
    let firstName: String
    let lastName: String
    var name: String {
        return firstName + " " + lastName
    }
    let birthYear: Int
    var books: [String]
    var numberOfBooks: Int {
        return books.count
    }
    
    var age: Int {
        return currentYear - birthYear
    }
}

