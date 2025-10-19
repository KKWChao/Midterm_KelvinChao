//
//  Dog.swift
//  DogBreeds
//
//  Created by Pacheco, Hellen on 10/9/21.
//

import SwiftUI

struct Subject : Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var imageName: String
}

struct Drivers : Codable, Identifiable {
    var id: String
    var name: String
    var team: String
    var teamIcon: String
    var description: String
    var imageName: String
    var number: Int
    var teamColor: String
}
