//
//  RMCharacterVC.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 25/07/24.
//

import UIKit

// MARK: CONTROLLER TO SHOW AND SEARCH FOR CHARACTERS 
final class RMCharacterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Characters"
        view.backgroundColor = .systemBackground
        
        
        let request = RMRequest(endPoints: .character,
                                queryParameters: [URLQueryItem(name: "name", value: "rick"),
                                                 URLQueryItem(name: "status", value: "alive")
                                                  ]
        )
        print(request.url)
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            }
        }
    


}
