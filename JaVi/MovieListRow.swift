//
//  MovieListRow.swift
//  JaVi
//
//  Created by Rafael Badaró on 27/07/23.
//

import SwiftUI

struct MovieListRow: View {
    var movie: Movie
    
    var body: some View {
        
        HStack{
            Text(movie.image)
            
            Text(movie.name)
            
            Spacer()
            
            Text(String(movie.rating))
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
        
    }
}

struct MovieListRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieListRow(movie: Movie(name: "Oppenheimer", image: "imagem", rating: 10))
    }
}
