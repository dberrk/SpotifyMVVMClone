//
//  Settings.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 30.04.2022.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
