//
//  AlbumDetailsResponse.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 10.05.2022.
//

import Foundation

struct AlbumDetailsResponse: Codable {
    let album_type: String
    let artists:  [Artist]
    let available_markets: [String]
    let external_urls: [String:String]
    let id: String
    let images: [APIImage]
    let label : String
    let tracks: TracksResponse
}

struct TracksResponse: Codable {
    let items: [AudioTrack]
}

