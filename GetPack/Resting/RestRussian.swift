//
//  RestRussian.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI
import AVKit

struct RestRussian: View {
    @State private var countdown: Int = 10
    @State private var isTimerRunning = true
    @State private var navigate = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let russianTwistSound = AVPlayer(url: Bundle.main.url(forResource: "Rest Russian Twist", withExtension: "m4a")!)
    let timerSound = AVPlayer(url: Bundle.main.url(forResource: "Timer", withExtension: "m4a")!)
    let bellSound = AVPlayer(url: Bundle.main.url(forResource: "Bell", withExtension: "wav")!)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blueSoft.edgesIgnoringSafeArea(.all)
               
                
                VStack {
                    CustomVideoPlayerView(videoName: "Russian Twist Video", videoType: "mov")
                        .scaledToFit()
                        .background(.white)
                        .cornerRadius(50)
                        .frame(width: 600, height: 600)
                    
                    VStack {
                        Text("REST")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("\(formatTime(countdown))")
                            .font(.title)
                            .foregroundColor(.white)
                            .onReceive(timer) { _ in
                                if self.isTimerRunning {
                                    if self.countdown > 0 {
                                        self.countdown -= 1
                                        if self.countdown == 4 {
                                            self.timerSound.play()
                                        }
                                    } else {
                                        self.isTimerRunning = false
                                        self.timerSound.pause()
                                        self.bellSound.play()
                                        navigate = true
                                    }
                                }
                            }
                    }
                    .padding(.vertical, 20)
                    
                    VStack {
                        Button(action: {
                            self.countdown += 20
                        }) {
                            AddButton()
                        }
                        .padding(10)
                        Button(action: {
                            self.stopAllSounds()
                            self.bellSound.play()
                            self.isTimerRunning = false
                            self.navigate = true
                        }) {
                            SkipButton()
                        }
                    }
                    
                    VStack {
                        Text("Next 3/10")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("RUSSIAN TWIST 20")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    .padding(.vertical, 20)
                }
            }
            
            NavigationLink(destination: Russian1(), isActive: $navigate) {
                EmptyView()
            }
        }
        .onAppear {
            russianTwistSound.play()
        }
        .onDisappear {
            stopAllSounds()
        }
        .navigationBarBackButtonHidden()
    }
    
    func formatTime(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    func stopAllSounds() {
        russianTwistSound.pause()
        timerSound.pause()
        bellSound.pause()
    }
}

#Preview {
    RestRussian()
}