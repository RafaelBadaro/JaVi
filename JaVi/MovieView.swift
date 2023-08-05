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
        
        VStack{
            
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
                
                HStack{
                    Text("Comments")
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }.padding()
                
                
                
                List(movie.comments) { comment in
                    CommentListRow(comment: comment)
                }.listStyle(.plain)


            }.background(Color.black.opacity(1))
            
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: Movie(title: "Oppenheimer", image: "oppie", rating: 10,
                               description: "Oppenheimer (/ˈɒpənhaɪmər/ OP-ən-hy-mər) is a 2023 epic biographical thriller film written and directed by Christopher Nolan. Based on the 2005 biography American Prometheus by Kai Bird and Martin J. Sherwin, the film chronicles the career of American theoretical physicist J. Robert Oppenheimer." ,
                               comments: [Comment(user:"Laura", content: "It's too damn long!" ), Comment(user:"Rafael", content: "One of the best movies I've ever watched, must watch for everyone" ), Comment(user:"Rafael", content: "One of the best movies I've ever watched, must watch for everyone" ), Comment(user:"Rafael", content: "One of the best movies I've ever watched, must watch for everyone" ), Comment(user:"Rafael", content: "One of the best movies I've ever watched, must watch for everyone" ), Comment(user:"Rafael", content: "One of the best movies I've ever watched, must watch for everyone" )])
        )
    }
}
