//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Алишер Сайдешев on 07.03.2023.
//

import Foundation

/// Represent Unique API  endpoint
@frozen enum RMEndpoint: String {
    
    ///  Endpoint to get character info
    case character // "character
    ///  Endpoint to get location info
    case location
    ///  Endpoint to get episode info
    case episode
}
