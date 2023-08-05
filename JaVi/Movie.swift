//
//  Movie.swift
//  JaVi
//
//  Created by Rafael Badaró on 27/07/23.
//

import Foundation

struct Movie: Identifiable {
    var id: UUID = UUID()
    
    var title: String
    var image: String
    var rating: Int
    var description: String
    var comments: [Comment]
    
    func getFormattedRating() -> String {
        return String(rating) + "/10"
    }
}
