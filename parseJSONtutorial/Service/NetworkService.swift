//
//  NetworkService.swift
//  parseJSONtutorial
//
//  Created by Maks Kokos on 11.08.2022.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService()
    
    func request(urlString: String, completion: @escaping (Data?, Error?) -> Void) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    completion(nil, error)
                }
                completion(data, nil)
            }
        }.resume()
    }
}
