//
//  placeCard.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct placeCard: View {
    var destination:Destination
    
    var body: some View {
        VStack{
                AsyncImage(url: URL(string: destination.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(alignment: .bottom) {
                            Text(destination.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .frame(maxWidth: 140)
                                .padding()
                        }
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(alignment: .bottom) {
                            Text(destination.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .frame(maxWidth: 136)
                                .padding()
                        }
                }
        }
        .frame(width: 180, height: 230, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
        
    }
}

struct placeCard_Previews: PreviewProvider {
    static var previews: some View {
        placeCard(destination: Destination.all[1])
    }
}
