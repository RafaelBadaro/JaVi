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
            
            List(movies) { movie in
                NavigationLink(destination: MovieView(movie: movie)){
                    MovieListRow(movie: movie)
                }.background(Color.black)
                
            }
             .navigationBarTitle(Text("Movies"))
             .listStyle(.plain)
             .background(.black)
             .onAppear {
                    movies = dataService.getData()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
