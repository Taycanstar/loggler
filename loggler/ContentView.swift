//
//  ContentView.swift
//  loggler
//
//  Created by Dimerson Nunez on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Other Tab")
                .tabItem {
                    Label("Other", systemImage: "ellipsis.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
