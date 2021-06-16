//
//  VideoListItemView.swift
//  Afrika
//
//  Created by waheedCodes on 16/06/2021.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - PROPERTIES
    
    let video: Video
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack (spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } // : - ZSTACK
            
            VStack (alignment: .leading, spacing: 10, content: {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .multilineTextAlignment(.leading)
                    .font(.footnote)
                    .lineLimit(2)
            }) // : - VSTACK
        } // : - HSTACK
    }
}

// MARK: - PREVIEW

struct VideoListItemView_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
