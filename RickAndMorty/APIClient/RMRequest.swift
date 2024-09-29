//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 27/07/24.
//

import Foundation

// MARK: OBJECT THAT REPRESENT A SINGLE API CALL 
final class RMRequest {
    
    // BASE URL
    
    // ENDPOINT

    // QUERY PARAMETERS
    
    
    private struct Constants {
         static let baseUrl = "https://rickandmortyapi.com/api"
        
    }
    
    private let endPoint: RMEndPoint
    private let pathComponents : [String]
    private let queryParameters: [URLQueryItem]
    
    // Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
                
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&value=name
            let argumentString = queryParameters.compactMap {
                // $0 represents the current element in the iteration
                guard let value = $0.value else  { return nil }
                return "\($0.name) = \(String(describing: $0.value))"
            }.joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    
    
    //MARK: computed property
    public var url: URL? {
         return URL(string: urlString)
        
        
    }
    
    // MARK: HERE IT MAY BE INITIALIZED WITH EMPTY ARRAY
    public init(endPoints: RMEndPoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoints
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
     
    //https://rickandmortyapi.com/api/character
    
    
}
