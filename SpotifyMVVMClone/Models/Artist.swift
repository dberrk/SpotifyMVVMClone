//
//  Artist.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 20.04.2022.
//

import Foundation

struct Artist: Codable {
    let id : String
    let name : String
    let type: String
    let external_urls: [String:String]
}
