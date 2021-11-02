//
//  Structures.swift
//  UserDefaults
//
//  Created by Алексей Горбунов on 02.11.2021.
//

import Foundation

struct UserSettings: Codable {
    let phone: String
    let email: String
    let faceID: Bool
    let autoLogin: Bool
    let question: [SecurityQuestion]
}

struct SecurityQuestion: Codable {
    let question: String
    let answer: String
}

enum UserKeys {
    static let appSettings = "appSettings"
}
