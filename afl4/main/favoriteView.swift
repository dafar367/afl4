//
//  favoriteView.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct favoriteView: View {
    var body: some View {
        NavigationView {
            Text("favorite")
                .navigationTitle("favorite place")
        }
        .navigationViewStyle(.stack)
    }
}

struct favoriteView_Previews: PreviewProvider {
    static var previews: some View {
        favoriteView()
    }
}
