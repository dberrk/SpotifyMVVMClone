//
//  FeaturedPlaylistResponse.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 1.05.2022.
//

import Foundation

struct FeaturedPlaylistResponse : Codable {
    let playlists: PlaylistResponse
    
}

struct PlaylistResponse : Codable {
    let items: [Playlist]
}



struct User : Codable {
    let display_name: String
    let external_urls : [String:String]
    let id : String
    
}
