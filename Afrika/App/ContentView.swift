//
//  ContentView.swift
//  Afrika
//
//  Created by waheedCodes on 15/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            } // : LIST
            .navigationBarTitle("Afrika", displayMode: .large)
        } // : NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
