//
//  placeList.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct placeList: View {
    var destination: [Destination]
    var body: some View {
        VStack{
            HStack{
                Text("\(destination.count) \("destination")")
                    .font(.headline)
                    .fontWeight(.medium)
                Spacer()
            }
            
            //list by place card
            LazyVGrid(columns:
                        [GridItem(.adaptive(minimum: 140),spacing: 30)],
                      spacing: 30) {
                ForEach(destination){
                    destination in
                    NavigationLink(destination: placeDetail(destination: destination)){
                        placeCard(destination: destination)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct placeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            placeList(destination: Destination.all)
        }
        
    }
}
