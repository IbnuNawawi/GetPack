//
//  JumpingResume.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//
import SwiftUI
import AVFoundation

struct JumpingResume: View {
    @State private var player: AVAudioPlayer?
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack {
                    Spacer() // Top spacer to push content down
                    
                    VStack(spacing: 10) {
                        Image("Hold")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 100)
                            .padding(.bottom, 120) // Adjust padding for closer spacing
                        
                        TextResume()
                    }
                    
                    Spacer().frame(height: 40) // Space between text and buttons
                    
                    VStack(spacing: 20) {
                        NavigationLink(destination: Jumping1View()) {
                            ResumeButton()
                        }
                        NavigationLink(destination: Jumping1View()) {
                            RestartButton()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            playBellSound()
                        })
                        NavigationLink(destination: WorkoutList()) {
                            Text("Quit")
                                .fontWeight(.bold)
                                .foregroundStyle(.gray)
                                .padding(.vertical, 10)
                        }
                    }
                    
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 1.8)
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden()
        }
    }
    
    func playBellSound() {
        guard let url = Bundle.main.url(forResource: "Bell", withExtension: "wav") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}

#Preview {
    JumpingResume()
}
