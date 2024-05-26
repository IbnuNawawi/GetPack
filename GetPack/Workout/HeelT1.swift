//
//  HellT1.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI
import AVKit

struct HeelT1: View {
    @State private var isPaused = false
    @State private var navigateToRest = false
    @State private var navigateToResume = false
    @State private var audioPlayer: AVAudioPlayer?
    @State private var timerSoundPlayer: AVAudioPlayer?
    @State private var bellSoundPlayer: AVAudioPlayer?

    var body: some View {
        NavigationStack {
            ZStack {
                
                
                GeometryReader { geometry in
                    VStack {
                        HStack {
                            NavigationLink(destination: HeelResume()) {
                                CloseButtonWO()
                            }
                            .frame(width: 100, height: 100)
                            .padding()
                            .offset(x: geometry.safeAreaInsets.leading + 10, y: geometry.safeAreaInsets.top - 30)
                            
                            Spacer()
                        }
                        Spacer()
                    }
                }
                VStack {
                    CustomVideoPlayerView(videoName: "Heel Touch Video", videoType: "mov")
                        .frame(height: 500)
                        .ignoresSafeArea()
                    
                    Text("HEEL TOUCH")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .padding()
                    
                    Text("x 20")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.blueSoft)
                    
                    Button(action: {
                        playBellSound()

                        // Play bell sound when Finish is pressed
                    }) {
                        NavigationLink(destination: RestLeg()) {
                            FinishButton()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            playBellSound()
                        })
                    }
                    .padding(.top, 20)
                    
                    HStack {
                        NavigationLink(destination: RestHeel()) {
                            PreviousButton()
                        }
                        .padding(.vertical,10)
                        
                        NavigationLink(destination: RestLeg()) {
                            NextButton()
                        }
                        .padding(.vertical,10)
                        .simultaneousGesture(TapGesture().onEnded {
                            playBellSound()
                        })
                    }
                }
                .onAppear {
                    playSound()
                }
                .onDisappear {
                    stopSound()
                }
            }
        }
        .navigationBarBackButtonHidden()
    }

    func pauseSound() {
        audioPlayer?.pause()
    }

    func resumeSound() {
        audioPlayer?.play()
    }

    func stopSound() {
        audioPlayer?.stop()
        timerSoundPlayer?.stop()
        bellSoundPlayer?.stop()
    }

    func playSound() {
        if let path = Bundle.main.path(forResource: "Heel Touch", ofType: "m4a") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("Error playing sound")
            }
        }
    }

    func playBellSound() {
        if let path = Bundle.main.path(forResource: "Bell", ofType: "wav") {
            do {
                bellSoundPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                bellSoundPlayer?.play()
            } catch {
                print("Error playing bell sound")
            }
        }
    }
}
#Preview {
    HeelT1()
}
