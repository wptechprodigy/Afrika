//
//  VideoListView.swift
//  Afrika
//
//  Created by waheedCodes on 15/06/2021.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    
    var videos: [Video] = Bundle.main.decode("videos.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video)
                        .padding(.vertical, 8)
                } // : - LOOP
            } // : - LIST
            .navigationBarTitle("Videos", displayMode: .inline)
            .listStyle(InsetGroupedListStyle())
        } // : - NAV
    }
}

// MARK: - PREVIEW

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
