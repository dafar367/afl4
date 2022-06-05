//
//  tabBar.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        TabView{
            homeView()
                .tabItem {
                    Label("home", systemImage: "house")
                }
            categorieView()
                .tabItem {
                    Label("category", systemImage: "list.bullet")
                }
            newPlaceView()
                .tabItem {
                    Label("plus", systemImage: "plus")
                }
            settingView()
                .tabItem {
                    Label("setting", systemImage: "gear")
                }
            favoriteView()
                .tabItem {
                    Label("favorite", systemImage: "heart")
                }
        }
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
