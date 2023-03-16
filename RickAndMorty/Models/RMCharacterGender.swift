//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Алишер Сайдешев on 16.03.2023.
//

import UIKit

enum RMCharacterGender: String, Codable {
//    ('Female', 'Male', 'Genderless' or 'unknown')
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
