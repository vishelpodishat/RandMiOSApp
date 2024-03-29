//
//  RMService.swift
//  RickAndMorty
//
//  Created by Алишер Сайдешев on 07.03.2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton sintance
    static let shared = RMService()
    
    /// Privatiez constructor
    private init() {
    }
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back 
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {

    }
}
