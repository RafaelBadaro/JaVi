//
//  Comment.swift
//  JaVi
//
//  Created by Rafael Badaró on 04/08/23.
//

import Foundation
struct Comment: Identifiable, Hashable {
    var id: UUID = UUID()
    
    var user: String
    var content: String
}
