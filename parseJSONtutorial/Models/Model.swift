//
//  Model.swift
//  parseJSONtutorial
//
//  Created by Maks Kokos on 11.08.2022.
//

import Foundation

struct SearchResult: Codable {
    let resultCount: Int
    let results: [Track]
}

struct Track: Codable {
    let artistName, collectionName, trackName: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String?
    let primaryGenreName: String?
}
