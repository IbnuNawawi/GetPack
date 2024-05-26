//
//  DescriptionView.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//


import SwiftUI

struct DescriptionView: View {
    var videoWO: String
    var nameWO: String
    var descriptionWO: String
    var muscleImage: String
    var focusArea: [String]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    
                    ZStack {
                        CustomVideoPlayerView(videoName: videoWO, videoType: "mov")
                            .scaledToFit()
                            .frame(height: 700)
                            .padding()
                    }
                    .frame(height: 300)
                    
                    // Title
                    Text(nameWO)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 60)
                        .padding(.bottom, 20)
                    
                    // First VStack with description
                    VStack(alignment: .leading, spacing: 10) {
                        Text("INSTRUCTION")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.blueSoft)
                        Text(descriptionWO)
                            .font(.headline)
                            .fontWeight(.light)
                            .fixedSize(horizontal: false, vertical: true) // Ensure multiline text displays properly
                    }
                    .padding(.horizontal, 40)
                    
                    // Second VStack with description
                    VStack(alignment: .leading, spacing: 10) {
                        Text("FOCUS AREA")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(.blueSoft)
                            .padding(10)
                        
                        // HStack with image inside the second VStack
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 10) {
                                ForEach(focusArea, id: \.self) { focus in
                                    CardOtot(muscleName: focus)
                                        .fixedSize(horizontal: false, vertical: true) // Ensure multiline text displays properly
                                }
                            }
                            Spacer()
                            Image(muscleImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height: 300) // Adjust the size to fit consistently
                            Spacer()
                        }
                        .padding(.horizontal, 10)
                    }
                    .padding(.vertical, 30)
                    .padding(.horizontal, 40)
                    Spacer()
                    
                    // Close button
                }
            }
            NavigationLink(destination: WorkoutList()) {
                Text("Close")
                    .fontWeight(.bold)
                    .frame(width: 500, height: 30)
                    .foregroundStyle(.white)
                    .padding(10)
                    .background(Color.blueSoft)
                    .cornerRadius(10)
            }
            .padding(20)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    DescriptionView(videoWO: "Jumping Jack Video",
                    nameWO: "JUMPING JACKS",
                    descriptionWO: """
                        This is the first description section. It contains some details about the topic and gives more information to the user. You can write multiple lines here to explain the content properly.
                        
                        This is the second description section. It continues the explanation and provides additional insights or details that are relevant to the topic being discussed.
                        """,
                    muscleImage: "Otot Jumping",
                    focusArea: ["Shoulders","Quadriceps","Shoulders","Quadriceps"])
}
