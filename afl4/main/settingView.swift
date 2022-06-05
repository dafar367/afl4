//
//  settingView.swift
//  afl4
//
//  Created by atallah dafa on 05/06/22.
//

import SwiftUI

struct settingView: View {
    var body: some View {
        NavigationView {
            Text("setting")
                .navigationTitle("setting")
        }
        .navigationViewStyle(.stack)
    }
}

struct settingView_Previews: PreviewProvider {
    static var previews: some View {
        settingView()
    }
}
