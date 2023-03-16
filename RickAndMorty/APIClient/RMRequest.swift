//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Алишер Сайдешев on 07.03.2023.
//

import Foundation
import UIKit

/// Object that represents API call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path Components for API, if any
    private let pathComponents: Set<String>
    
    /// Query Arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name = value&name = value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
            return string
        }
    
    /// Computed & Constructed API url
        public var url: URL? {
            return URL(string: urlString)
        }
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    //MARK: - Public
    
    /// Constructed request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Collection of Query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    // https://rickandmortyapi.com/api/character/2
}
