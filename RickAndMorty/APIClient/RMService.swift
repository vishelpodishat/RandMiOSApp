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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void) {
        
    }
}