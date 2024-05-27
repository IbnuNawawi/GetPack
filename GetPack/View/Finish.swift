//
//  Finish.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//
import SwiftUI
import AVFoundation

struct Finish: View {
    @State private var player: AVAudioPlayer?

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Image("Fly")
                    .resizable()
                    .scaledToFill()
                    .frame(height: UIScreen.main.bounds.height / 3.5)
                    .clipped()
                    .ignoresSafeArea(edges: .top)
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.white.opacity(0.7), Color.clear]),
                            startPoint: .bottom,
                            endPoint: .top
                        )
                        .frame(height: UIScreen.main.bounds.height / 3.5) // Menetapkan ukuran gradasi agar sesuai dengan gambar
                    )
                    .overlay(
                        VStack(alignment: .leading) {
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("WORKOUT")
                                    .font(.system(size: 60))
                                    .fontWeight(.bold)
                                    .foregroundColor(.orangeBold)
                                    .overlay(
                                        Text("WORKOUT")
                                            .font(.system(size: 60))
                                            .fontWeight(.bold)
                                            .foregroundColor(.blueSoft)
                                            .offset(x: 2, y: 2)
                                    )
                                    .overlay(
                                        Text("WORKOUT")
                                            .font(.system(size: 60))
                                            .fontWeight(.bold)
                                            .foregroundColor(.orangeSoft)
                                            .offset(x: -2, y: -2)
                                    )
                                Text("COMPLETED")
                                    .font(.system(size: 60))
                                    .fontWeight(.bold)
                                    .foregroundColor(.orangeBold)
                                    .overlay(
                                        Text("COMPLETED")
                                            .font(.system(size: 60))
                                            .fontWeight(.bold)
                                            .foregroundColor(.blueSoft)
                                            .offset(x: 2, y: 2)
                                    )
                                    .overlay(
                                        Text("COMPLETED")
                                            .font(.system(size: 60))
                                            .fontWeight(.bold)
                                            .foregroundColor(.orangeSoft)
                                            .offset(x: -2, y: -2)
                                    )
                            }
                            .padding(40)
                        }
                        , alignment: .bottomLeading
                    )

                Image("Throphy")
                    .resizable()
                    .scaledToFit()
                    .frame(height: UIScreen.main.bounds.height / 3.5)

                HStack {
                    Spacer()
                    VStack(alignment: .center) {
                        Text("10")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.blueSoft)
                        Text("Exercises")
                            .font(.system(size: 30, weight: .regular))
                            .foregroundColor(.blueSoft)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                    VStack(alignment: .center) {
                        Text("09:00")
                            .font(.system(size: 40, weight: .bold))
                            .foregroundColor(.blueSoft)
                        Text("Duration")
                            .font(.system(size: 30, weight: .regular))
                            .foregroundColor(.blueSoft)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
                .padding(40)

                NavigationLink(destination: WorkoutList()) {
                    Text("Finish")
                        .fontWeight(.bold)
                        .frame(width: 500, height: 30)
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(Color.blueSoft)
                        .cornerRadius(10)
                }
                .padding(.top, 20)

                Spacer()
            }
            .onAppear {
                playFinishSound()
            }
        }  .navigationBarBackButtonHidden()
        
    }
      
        

    func playFinishSound() {
        guard let url = Bundle.main.url(forResource: "finishSound", withExtension: "mp3") else {
            print("Sound file not found")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}



#Preview {
    Finish()
}
