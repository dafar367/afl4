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
            List{
                ForEach(Category.allCases){ category in
                    NavigationLink{
                        ScrollView{
                            placeList(destination: Destination.all.filter{ $0.category == category.rawValue})
                        }
                    }label: {
                        Text(category.rawValue + "s")
                    }
                    
                }
            }
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
