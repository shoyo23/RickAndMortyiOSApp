//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 25/07/24.
//

import Foundation

// MARK: WE MAKE THIS CONFIRM TO CODABLE BECAUSE WHICH LETS US DECODE DATA WE GET BACK FROM AN API CALL TO THIS OBJECT , SO BASICALLY TO DECODE AND DESERIALIZE JSON TO THIS NATIVE OBJECT
//struct RMCharacter: Codable {
//          let id: Int
//          let name: String
//          let status: RMCharacterStatus
//          let species: String
//          let type: String
//          let gender: RMCharacterGender
//          let origin: RMOrigin
//          let location: RMSingleLocation
//          let image: String
//          let episode: [String]
//          let url: String
//          let created: String
//        }
//    

struct RMCharacter: Codable {
        let id: Int
        let name: String
        let status: RMCharacterStatus
        let species: String
        let type: String
        let gender: RMCharacterGender
        let origin: RMOrigin
        let location: RMSingleLocation
        let image: String
        let episode: [String]
        let url: String
        let created: String
}



