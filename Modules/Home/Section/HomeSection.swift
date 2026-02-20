//
//  HomeSection.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

enum HomeSection:Int, CaseIterable {
    
    case featured
    case new
    case popular
    case genre
    
    var title: String {
        switch self {
        case .featured: return "Lo mas visto"
        case .new: return "Nuevos"
        case .popular: return "Populares"
        case .genre: return "Generos"
        }
    }

}
