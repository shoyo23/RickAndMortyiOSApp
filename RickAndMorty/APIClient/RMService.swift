//
//  RMService.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 27/07/24.
//

import Foundation

// MARK: PRIMARY API Service object to get the Rick and Morty data
final class RMService {
     // shared singleton instance
     static let shared = RMService()
    
    // privatized contructor
    private init() {}
    
    
    // MARK: SEND RICK AND MORTY API CALL
    // paramters: :
    // request: Request instance
    // type: The type of object we expect to get backf
    // completion: Callback with data or error
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void)
    {
         
    }
    
    
}
