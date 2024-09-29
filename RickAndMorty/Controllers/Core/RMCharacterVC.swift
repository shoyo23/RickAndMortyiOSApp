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
        
        
        RMService.shared.execute(.listCharactersRequests,
                                 expecting: RMGetAllCharactersResponse.self) { result  in
            
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.reuslts.count))
                
            case .failure(let error):
                print(String(describing: error))
                
            }
        }
    }
    


}
