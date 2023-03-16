//
//  RMCharacterStatus .swift
//  RickAndMorty
//
//  Created by Алишер Сайдешев on 16.03.2023.
//

import UIKit

enum RMCharacterStatus: String, Codable {
//    ('Alive', 'Dead' or 'unknown')
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
