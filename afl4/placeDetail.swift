//
//  placeDetail.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct placeDetail: View {
    var destination:Destination
    
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: destination.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1)

            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
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
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing:10){
                Text(destination.name)
                    .font(.title)
                    .bold()
                    
                VStack(spacing:20){
                    Text(destination.star)
                        .font(.title)
                    
                    VStack(alignment: .leading){
                        Text(destination.description)
                            Spacer()
                        
                    }
                }
                VStack(alignment: .leading,spacing: 20){
                    HStack{
                        Text("address")
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal,10)
                            .foregroundColor(Color("blueFont"))
                            .frame(width:85)
                        Text(destination.address)
                            
                            
                            
                            
                    }
                    HStack{
                        Text("phone")
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal, 10)
                            .foregroundColor(Color("blueFont"))
                            .frame(width:85)
                        Text(destination.telp)
                            
                    }
                    HStack{
                        Text("category")
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal, 10)
                            .foregroundColor(Color("blueFont"))
                            .frame(width:85)
                        Text(destination.category)
                            
                            
                    }
                }
                Spacer()
                
                
            }
            .padding(.horizontal,20)
        }
        .ignoresSafeArea(.container, edges: .top)
        
    }
}

struct placeDetail_Previews: PreviewProvider {
    static var previews: some View {
        placeDetail(destination: Destination.all[2])
    }
}
