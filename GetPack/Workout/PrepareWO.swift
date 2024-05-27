//
//  PrepareWO.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//
import SwiftUI
import AVKit
import AVFoundation

struct PrepareWO: View {
    @State private var timerValue: CGFloat = 0
    @State private var isActive: Bool = false
    private let totalTime: CGFloat = 6
    @State private var time: Int = 6
    @State private var navigate: Bool = false
    @State private var audioPlayer: AVAudioPlayer?
    @State private var bellPlayer: AVAudioPlayer?
    

    var videoName: String
    var workoutTitle: String
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topLeading) {
                VStack {
                    ZStack(alignment: .topLeading) {
                        CustomVideoPlayerView(videoName: "Jumping Jack Video", videoType: "mov")
//                            .background(.red)
                            .scaledToFill()
                            .frame(height: 450)
                            .clipped()
                    }.padding()

                    VStack(spacing: 20) {
                        Text("READY TO GO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.blueSoft)
                        
                        Text("JUMPING JACKS")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 30)
                            .opacity(0.3)
                            .foregroundColor(Color.blue.opacity(0.3))
                        
                        Circle()
                            .trim(from: 0.0, to: min(timerValue / totalTime, 1.0))
                            .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                            .foregroundColor(Color.blueSoft)
                            .rotationEffect(Angle(degrees: 270.0))
                            .animation(.linear, value: timerValue)
                            .onAppear {
                                startTimer()
                                playSound()
                            }
                        
                        Text(String(format: "%02d", time % 60))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .frame(width: 200, height: 200)
                    
                    Spacer()
                    
                    NavigationLink(destination: Jumping1View(), isActive: $navigate) {
                        EmptyView()
                    }
                
                    Spacer()
                }
                .padding(.vertical, 200)
            }
        }
        .navigationBarBackButtonHidden()
    }
    
    func startTimer() {
        timerValue = 0
        isActive = true
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if self.timerValue >= self.totalTime {
                timer.invalidate()
                self.isActive = false
            } else {
                self.timerValue += 0.1
            }
        }

        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if time > 0 {
                time -= 1
            } else {
                timer.invalidate()
                playBellSound()  // Play the bell sound when timer reaches 0
                navigate = true
                time = 5
                timerValue = 0
            }
        }
    }

    func playSound() {
        // Play "Ready Jumping Jacks 2"
        if let readyPath = Bundle.main.path(forResource: "Ready Jumping Jacks 2", ofType: "m4a") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: readyPath))
                audioPlayer?.play()
            } catch {
                print("Error playing Ready Jumping Jacks 2 sound")
            }
        }
    }

    func playBellSound() {
        // Play "Bell" sound
        if let bellPath = Bundle.main.path(forResource: "Bell", ofType: "wav") {
            do {
                bellPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: bellPath))
                bellPlayer?.play()
            } catch {
                print("Error playing Bell sound")
            }
        }
    }
}

#Preview {
    NavigationStack {
       PrepareWO(videoName: "Jumping1", workoutTitle: "jumping jack")
    }
}
