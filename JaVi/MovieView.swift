//
//  MovieView.swift
//  JaVi
//
//  Created by Rafael Badaró on 04/08/23.
//

import SwiftUI

struct MovieView: View {
    
    var movie: Movie
    
    var body: some View {
        
        ScrollView{
            
                HStack{
                    Image(movie.image)
                }
                
                HStack{
                    Text(movie.title)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Text(movie.getFormattedRating())
                        .foregroundColor(Color.white)
                        
                }
                
                Text(movie.description)
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                    .fixedSize(horizontal: false, vertical: true)
                
                HStack{
                    Text("Comments")
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }.padding()
                
                
            ForEach(movie.comments, id: \.self){ comment in
                CommentListRow(comment: comment)
            }
            
//                List(movie.comments) { comment in
// CommentListRow(comment: comment)
//                }


            }.background(Color.black.opacity(1))
            
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: DataService().getMovies()[0])
    }
}
