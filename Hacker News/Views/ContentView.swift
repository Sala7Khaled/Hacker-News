//
//  ContentView.swift
//  Hacker News
//
//  Created by Salah Khaled on 4/1/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text (String(post.points))
                    Text (post.title)
                    Text (post.objectID)
                }
            }
        .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
