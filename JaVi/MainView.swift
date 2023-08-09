//
//  ContentView.swift
//  JaVi
//
//  Created by Rafael Badaró on 27/07/23.
//

import SwiftUI

struct MainView: View {
    
    @State var movies: [Movie] = [Movie]()
    var dataService = DataService()
    
    init() {
          //Use this if NavigationBarTitle is with Large Font
          UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      }
    
    var body: some View {
        NavigationView{
            
            VStack{
                List(movies) { movie in
                    NavigationLink(destination: MovieView(movie: movie)){
                        MovieListRow(movie: movie)
                    }.listRowBackground(Color.black)
                }
                 .navigationBarTitle(Text("Movies"))
                 .listStyle(.plain)
                 .onAppear {
                        movies = dataService.getMovies()
                }
            }.background(Color.black)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
