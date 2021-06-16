//
//  Video.swift
//  Afrika
//
//  Created by waheedCodes on 16/06/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        return "video-\(id)"
    }
}
