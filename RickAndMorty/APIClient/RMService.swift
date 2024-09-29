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
    
    enum RMServiceError: Error {
         case failedToCreateRequest
         case failedToGetData
        
    }
    
    
//     MARK: SEND RICK AND MORTY API CALL
//     paramters: :
//     request: Request instance
//     type: The type of object we expect to get backf
//     completion: Callback with data or error
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    )
    {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            
            guard let data =  data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            // DECODE RESPONSE
            do {
//                let json = try JSONSerialization.jsonObject(with: data)
//                print(String(describing: json))
                
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
            
        }
        task.resume()
        
    }
    
    
    
    // MARK: private
    
    private func request(from rmRequest: RMRequest) -> URLRequest?  {
        guard let url = rmRequest.url else { return nil }
         var request = URLRequest(url: url)
        
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
    
}
