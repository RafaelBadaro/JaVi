//
//  ContentView.swift
//  JaVi
//
//  Created by Rafael Badaró on 27/07/23.
//

import SwiftUI

struct MainView: View {
    
    @State var movies: [Movie] = [Movie]()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Teste Git")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
