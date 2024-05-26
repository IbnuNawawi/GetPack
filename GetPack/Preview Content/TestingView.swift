//
//  TestingView.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//

import SwiftUI
import AVKit

struct TestingView: View {
//    @State private var timerValue: CGFloat = 0
//    @State private var isActive: Bool = false
//    private let totalTime: CGFloat = 6
//    @State private var time: Int = 6
//    @State private var navigate: Bool = false
//    @State private var audioPlayer: AVAudioPlayer?
//    @State private var bellPlayer: AVAudioPlayer?
//
//    var videoName: String
//    var workoutTitle: String
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                VStack {
                    ZStack(alignment: .topLeading) {
                        CustomVideoPlayerView(videoName: "Jumping Jack Video", videoType: "mov")
                            .background(.red)
                            .scaledToFill()
                            .frame(height: 450)
                            .clipped()
                    }.padding()

                    VStack(spacing: 20) {
                        Text("READY TO GO")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            
                        
                        Text("JUMPING JACKS")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    
                    Image(systemName: "square")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding(20)
                    
                    Spacer()
                }
               
                .padding(.vertical,200)
                
                NavigationLink(destination: SplashScreen()) {
                    Image(systemName: "x.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .foregroundColor(.blueSoft)
                        .padding(40)
                    
                        }
                
            }
        }
    }
}

#Preview {
    TestingView()
}
