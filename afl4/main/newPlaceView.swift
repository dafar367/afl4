//
//  newPlaceView.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct newPlaceView: View {
    var body: some View {
        NavigationView {
            Text("add new place")
                .navigationTitle("add new place to visit")
        }
        .navigationViewStyle(.stack)
    }
}

struct newPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        newPlaceView()
    }
}
