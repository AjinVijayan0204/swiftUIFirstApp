//
//  Countries.swift
//  FirstApp
//
//  Created by Ajin on 18/09/22.
//

import Foundation

struct Rajya: Identifiable{
    let id = UUID()
    let name: String
    let capital: String
    let currency: String
    let language: String
}

var countryes = [
    Rajya(name: "Indida", capital: "Delhi", currency: "rupee", language: "Many"),
    Rajya(name: "USA", capital: "Washington", currency: "Dollar", language: "English"),
    Rajya(name: "Norway", capital: "St", currency: "Dollar", language: "Norwegian"),
    Rajya(name: "Bangladesh", capital: "Dhaka", currency: "rupoah", language: "Bengal")
]
