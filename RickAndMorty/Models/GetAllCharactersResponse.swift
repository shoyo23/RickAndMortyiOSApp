//
//  GetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 29/09/24.
//

import Foundation


struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    
    let info: Info
    let reuslts: [RMCharacter]
}
