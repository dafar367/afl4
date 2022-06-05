//
//  categorieView.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct categorieView: View {
    var body: some View {
        NavigationView {
            Text("category")
                .navigationTitle("category")
        }
        .navigationViewStyle(.stack)
    }
}

struct categorieView_Previews: PreviewProvider {
    static var previews: some View {
        categorieView()
    }
}
