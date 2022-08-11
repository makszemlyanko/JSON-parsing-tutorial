//
//  NetworkDataFetcher.swift
//  parseJSONtutorial
//
//  Created by Maks Kokos on 11.08.2022.
//

import Foundation

class NetworkDataFetcher {
    
    static let shared = NetworkDataFetcher()
    
    func dataFetcher(urlString: String, response: @escaping (SearchResult?) -> Void) {
        NetworkService.shared.request(urlString: urlString) { (data, error)  in
            do {
                guard let data = data else { return }
                let objects = try JSONDecoder().decode(SearchResult.self, from: data)
                response(objects)
            } catch {
                print("Failed to decode: \(error)")
                response(nil)
            }
        }
    }
}
