//
//  ContentView.swift
//  GraphQL-StarWars
//
//  Created by Kanishk Kumar on 05/12/2022.
//

import SwiftUI
import StarWarsAPI

struct ContentView: View {
    @State private var films: [AllFilmsQuery.Data.AllFilms.Film?] = []
    
    var body: some View {
        NavigationView {
            VStack {
                List(films, id: \.?.hashValue) { film in
                    HStack {
                        Text(film?.title ?? "A")
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Star Wars Films")
        }
        .onAppear {
            Network.shared.apollo.fetch(query: AllFilmsQuery()) { result in
                switch result {
                case .success(let graphQLData):
                    if let films = graphQLData.data?.allFilms?.films {
                        self.films = films
                    }
                case .failure(_):
                    print("Failure")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
