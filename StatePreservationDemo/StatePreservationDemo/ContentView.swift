//
//  ContentView.swift
//  StatePreservationDemo
//
//  Created by Tigran Simonyan on 4/11/20.
//  Copyright © 2020 Scriptomania. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ShareView()
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Share")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
