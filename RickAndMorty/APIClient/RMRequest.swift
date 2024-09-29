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
    
    // MARK: API CONSTANTS
    private struct Constants {
         static let baseUrl = "https://rickandmortyapi.com/api"
        
    }
    
    // MARK: DESIRED ENDPOINT
    private let endPoint: RMEndPoint
    
    // MARK: PATH COMPONENTS FOR API, IF ANY
    private let pathComponents : [String]
    
    // MARK: QUERY ARGUMENTS FOR API
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
    
    
    
    //MARK: COMPUTED & CONSTRUCTED API URL
    public var url: URL? {
         return URL(string: urlString)
        
    }
    
    // MARK: DESIRED API METHOD
    public let httpMethod = "GET"
    
    // MARK: CONSTRUCT REQUEST
    // - PARAMETERS:
    // -ENDPOINT: TARGET ENDPOINT
    // -PATHCOMPONENTS: COLLECTION OF THE PATH COMPONENTS
    //-QUERYPARAMETERS: COLLECTION OF THE QUERYPARAMETERS
    
    // MARK: HERE IT MAY BE INITIALIZED WITH EMPTY ARRAY
    // CONSTRUCTOR
    public init(endPoints: RMEndPoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoints
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
     
    //https://rickandmortyapi.com/api/character
    
    
}


extension RMRequest {
    static let listCharactersRequests = RMRequest(endPoints: .character)
    
}
