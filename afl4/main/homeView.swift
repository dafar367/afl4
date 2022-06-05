//
//  homeView.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        NavigationView {
            List(Destination.all) { destination in
                Text(destination.name)
                    .navigationTitle("recomend place")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
