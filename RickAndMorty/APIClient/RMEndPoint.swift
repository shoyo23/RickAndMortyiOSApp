//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 27/07/24.
//

import Foundation

// MARK: REPRESENT UNIQUE API ENDPOINT
@frozen enum RMEndPoint: String {
    // Endpoint to get character info
     case character // "will give character"
    // Endpointi to get the location info
     case location
    // Endpoint to get the episode into
     case episode
}
