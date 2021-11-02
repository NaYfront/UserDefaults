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

func createSettings() -> UserSettings {
    return UserSettings(phone: "89274637060",
                        email: "nayfront28@gmail.com",
                        faceID: false,
                        autoLogin: true,
                        question: [.init(question: "question", answer: "answer")]
    )
}
