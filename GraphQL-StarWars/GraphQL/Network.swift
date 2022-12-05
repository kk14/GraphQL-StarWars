//
//  Network.swift
//  GraphQL-StarWars
//
//  Created by Kanishk Kumar on 05/12/2022.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private init() { }
    
    lazy var apollo = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
}
