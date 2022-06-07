//
//  placeList.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct placeList: View {
    var destination: [Destination]
    @State var searchText = ""
    @State var sear = false
    var body: some View {
        VStack{
            HStack{
                TextField("Search", text: $searchText)
                                   .padding(.leading,20)
                           }
                           .padding()
                           .padding(.horizontal)
                           .background(Color(.systemGray4))
                           .cornerRadius(10)
                           .onTapGesture {
                               sear = true
                           }
                           .overlay(
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                Spacer()
                                if sear{
                                    Button(action: {searchText = ""}, label: {Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.gray)})
                                }
                            }.padding(.horizontal,20))
            
                Text("\(destination.count) \("destination")")
                    .font(.headline)
                    .fontWeight(.medium)
                Spacer()
            }
            
            //list by place card
            LazyVGrid(columns:
                        [GridItem(.adaptive(minimum: 140),spacing: 30)],
                      spacing: 30) {
                ForEach((destination).filter({"\($0)".contains(searchText)||searchText.isEmpty})) {
                    destination in
                    NavigationLink(destination: placeDetail(destination: destination)){
                        placeCard(destination: destination)
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
