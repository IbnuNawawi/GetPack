//
//  RussianResume.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 26/05/24.
//

import SwiftUI
import AVFoundation

struct RussianResume: View {
    @State private var player: AVAudioPlayer?
    
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                    VStack(spacing: 10) {
                        Image("Russian")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 500, height: 100)
                            .padding(.bottom, 120)
                        TextResume()
                    }
                    
                    Spacer().frame(height: 40)
                    
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
    RussianResume()
}
