//
//  AnimalDetailView.swift
//  Afrika
//
//  Created by waheedCodes on 16/06/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false, content: {
            VStack (alignment: .center, spacing: 20) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            } // : VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }) // : SCROLL
    }
}

// MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
