//
//  SongsResponse.swift
//  API
//
//  Created by Ali Gungor on 19.01.2020.
//  Copyright © 2020 Ali Gungor. All rights reserved.
//

import Foundation

public struct SongsResponse: Codable {
    let feed: Feed
}

public struct Feed: Codable {
    let title: String
    let copyright: String
    let icon: String
    let results: [Playlist]
}

public struct Playlist: Codable {
    let id: String
    let name: String
    let artworkUrl100: String
    let url: String
}
