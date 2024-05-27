//
//  ContentView.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//
import SwiftUI
import AVFoundation

struct SplashScreen: View {
    @State private var isActive = false
    @State private var isAnimating = false
    @State private var audioPlayer: AVAudioPlayer?
    @State private var finishSoundPlayer: AVAudioPlayer?

    var body: some View {
        VStack {
            if isActive {
                WorkoutList()
            } else {
                VStack {
                    Image("IconImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height: 500)

                    Text("GETPACK")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 20)

                    Text("Get your Sixpack, Get Your Confidence")
                        .font(.subheadline)
                        .padding(.top, 5)
                    
                    Spacer().frame(height: 100)

                    HStack {
                        Circle()
                            .fill(Color.blueYoung)
                            .frame(width: 15, height: 15)
                            .offset(x: isAnimating ? -10 : 10)

                        Circle()
                            .fill(Color.blueSoft)
                            .frame(width: 15, height: 15)
                            .offset(x: isAnimating ? 10 : -10)
                    }
                    .animation(.easeInOut(duration: 0.6).repeatForever(autoreverses: true), value: isAnimating)
                    .onAppear {
                        self.isAnimating = true
                    }
                }
            }
        }
        .onAppear {
            playFinishSound()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                playSplashIntroSound()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) { // Adjust the total time if needed
                withAnimation {
                    self.isActive = true
                }
            }
        }
        .navigationBarBackButtonHidden()
    }

    private func playFinishSound() {
        if let path = Bundle.main.path(forResource: "finishSound", ofType: "mp3") {
            do {
                finishSoundPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                finishSoundPlayer?.play()
            } catch {
                print("Error playing finish sound")
            }
        }
    }

    private func playSplashIntroSound() {
        if let path = Bundle.main.path(forResource: "Splash Intro 2", ofType: "m4a") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("Error playing splash intro sound")
            }
        }
    }
}

#Preview {
    SplashScreen()
}
