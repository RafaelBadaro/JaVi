//
//  Movie.swift
//  JaVi
//
//  Created by Rafael Badaró on 27/07/23.
//

import Foundation

struct Movie: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var image: String
    var rating: Int
}
