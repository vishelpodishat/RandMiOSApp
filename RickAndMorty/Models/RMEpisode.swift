//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Алишер Сайдешев on 27.02.2023.
//

import UIKit

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
