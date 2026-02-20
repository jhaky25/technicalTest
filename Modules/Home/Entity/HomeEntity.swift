//
//  HomeEntity.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

struct Movie: Decodable {
    
    let id: String
    let title: String
    let description: String
    let director: String
    let releaseDate: String
    let image: String?
    let movieBanner: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case director
        case releaseDate = "release_date"
        case image
        case movieBanner = "movie_banner"
    }
}
