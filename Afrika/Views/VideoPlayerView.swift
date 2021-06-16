//
//  VideoPlayerView.swift
//  Afrika
//
//  Created by waheedCodes on 16/06/2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    var videoSelected: String
    var videoTitle: String
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                Text(videoTitle)
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
                
            )
        } // : - VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
