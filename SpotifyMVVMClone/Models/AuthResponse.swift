//
//  AuthResponse.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 21.04.2022.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
    
}

