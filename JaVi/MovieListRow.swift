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
        }.background(Color.black)
        //.listRowSeparator(.hidden)
        .listRowBackground(Color.red)
        
    }
}

struct MovieListRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieListRow(movie: Movie(title: "Oppenheimer", image: "oppie", rating: 10,
                                  description: "Oppenheimer (/ˈɒpənhaɪmər/ OP-ən-hy-mər) is a 2023 epic biographical thriller film written and directed by Christopher Nolan. Based on the 2005 biography American Prometheus by Kai Bird and Martin J. Sherwin, the film chronicles the career of American theoretical physicist J. Robert Oppenheimer." , comments: [])
        )
    }
}
