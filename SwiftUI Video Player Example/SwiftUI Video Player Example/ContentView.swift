//
//  ContentView.swift
//  SwiftUI Video Player Example
//
//  Created by Bill Skrzypczak on 11/5/23.
//

import SwiftUI
import AVKit // Step 0 - Import the AV library

struct ContentView: View {

    // Step 1 - Define the location of the video
    //
    let url = URL(string: "https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/360/Big_Buck_Bunny_360_10s_1MB.mp4")!
    
    // Step 2 - Design a UI to display the video
    var body: some View {
        NavigationView{
            VStack{
                // Step 3 - Use the VideoPlayer function to play the video
               VideoPlayer(player: AVPlayer(url: url))
                    .scaledToFit()
                Text("This is my cool video")
                    
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
