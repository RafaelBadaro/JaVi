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
            Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
                .cornerRadius(10)
                
            
            Text(movie.title)
                .foregroundColor(Color.white)
                .bold()
            
            Spacer()
            
            Text(movie.getFormattedRating())
                .foregroundColor(Color.white)
        }
    }
}

struct MovieListRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieListRow(movie: DataService().getMovies()[0])
    }
}
