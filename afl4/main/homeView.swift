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
            ScrollView{
                placeList(destination: Destination.all)
            }
            .navigationTitle("Recomend place")
        }
        .navigationViewStyle(.stack)
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
        
    }
}
