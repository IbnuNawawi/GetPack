//
//  Plank1.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI
import AVFoundation

struct Plank1: View {
    @State private var timer: Timer?
    @State private var countdown = 20 // Countdown starts from 21 seconds for demonstration
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
                            NavigationLink(destination: PlankResume()) {
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
                    CustomVideoPlayerView(videoName: "Plank Video", videoType: "mov")
                        .frame(height: 500)
                        .ignoresSafeArea()
                    
                    Text("PLANK")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .padding()
                    
                    TimerView(countdown: $countdown)
                        .padding()
                    
                    Button(action: {
                        if isPaused {
                            resumeTimer()
                        } else {
                            pauseTimer()
                        }
                        isPaused.toggle()
                    }) {
                        Text(isPaused ? "Resume" : "Pause")
                            .fontWeight(.bold)
                            .frame(width: 500, height: 30)
                            .foregroundStyle(.white)
                            .padding(10)
                            .background(.blueSoft)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                   
                    HStack {
                        NavigationLink(destination: RestPlank()) {
                          PreviousButton()
                        }
                        .padding(.vertical,10)
                        
                        NavigationLink(destination: RestCobra()) {
                            NextButton()
                        }
                        .padding(.vertical,10)
                        .simultaneousGesture(TapGesture().onEnded {
                            playBellSound()
                        })
                    }
                    
                    
                    NavigationLink(destination: RestCobra(), isActive: $navigateToRest) {
                        EmptyView()
                    }
                    .hidden()
                }
                .onAppear {
                    startTimer()
                    playSound()
                }
                .onDisappear {
                    stopTimer()
                    stopSound()
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    func startTimer() {
        stopTimer()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if countdown > 0 {
                countdown -= 1
                if countdown == 4 {
                    playTimerSound()
                }
            } else {
                stopTimer()
                playBellSound()
                navigateToRest = true
            }
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    func pauseTimer() {
        timer?.invalidate()
    }

    func resumeTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if countdown > 0 {
                countdown -= 1
                if countdown == 4 {
                    playTimerSound()
                }
            } else {
                stopTimer()
                playBellSound()
                navigateToRest = true
            }
        }
    }

    func stopSound() {
        audioPlayer?.stop()
        timerSoundPlayer?.stop()
        bellSoundPlayer?.stop()
    }

    func playSound() {
        if let path = Bundle.main.path(forResource: "Plank", ofType: "m4a") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                audioPlayer?.play()
            } catch {
                print("Error playing sound")
            }
        }
    }

    func playTimerSound() {
        if let path = Bundle.main.path(forResource: "Timer", ofType: "m4a") {
            do {
                timerSoundPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                timerSoundPlayer?.play()
            } catch {
                print("Error playing timer sound")
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
    Plank1()
}
