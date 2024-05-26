//
//  WorkoutList.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.

import SwiftUI

struct WorkoutList: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("Abs")
                        .resizable()
                        .scaledToFill()
                        .frame(height: UIScreen.main.bounds.height / 4)
                        .clipped()
                        .ignoresSafeArea(edges: .top)
                        .overlay(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.white.opacity(0.7), Color.clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                            .frame(height: UIScreen.main.bounds.height / 4) // Menetapkan ukuran gradasi agar sesuai dengan gambar
                        )
                        .overlay(
                            VStack(alignment: .leading) {
                                Spacer()
                                VStack(alignment: .leading) {
                                    Text("Get Your Sixpack")
                                        .font(.system(size: 60))
                                        .fontWeight(.bold)
                                        .foregroundColor(.orangeBold)
                                        .overlay(
                                            Text("Get Your Sixpack")
                                                .font(.system(size: 60))
                                                .fontWeight(.bold)
                                                .foregroundColor(.blueSoft)
                                                .offset(x: 2, y: 2)
                                        )
                                        .overlay(
                                            Text("Get Your Sixpack")
                                                .font(.system(size: 60))
                                                .fontWeight(.bold)
                                                .foregroundColor(.orangeSoft)
                                                .offset(x: -2, y: -2)
                                        )
                                    Text("Get Your Confidence")
                                        .font(.system(size: 50))
                                        .fontWeight(.bold)
                                        .foregroundColor(.orangeBold)
                                        .overlay(
                                            Text("Get Your Confidence")
                                                .font(.system(size: 50))
                                                .fontWeight(.bold)
                                                .foregroundColor(.blueSoft)
                                                .offset(x: 2, y: 2)
                                        )
                                        .overlay(
                                            Text("Get Your Confidence")
                                                .font(.system(size: 50))
                                                .fontWeight(.bold)
                                                .foregroundColor(.orangeSoft)
                                                .offset(x: -2, y: -2)
                                        )
                                }
                                .padding(20)
                            }
                            , alignment: .bottomLeading
                        )
                }
            
        
    
                List {
                    ForEach(workouts) { workout in
                        NavigationLink(
                            destination: DescriptionView(
                                videoWO: workout.videoWO,
                                nameWO: workout.nameWO,
                                descriptionWO: workout.descriptionWO,
                                muscleImage: workout.muscleImage,
                                focusArea: workout.focusArea
                            )
                        ) {
                            CardList(
                                imageWorkout: workout.imageWorkout,
                                titleWorkout: workout.titleWorkout,
                                timeWorkout: workout.timeWorkout
                            )
                        }
                    }
                }
                
                NavigationLink(destination: PrepareWO(videoName: "Jumping Jack", workoutTitle: "jumping jack")) {
                    Text("Start")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(width: 500, height: 30)
                        .foregroundStyle(.white)
                        .padding(10)
                        .background(.blueSoft)
                        .cornerRadius(10)
                }
                .padding()
            }
            .ignoresSafeArea(.all)
        }
        .navigationBarBackButtonHidden()
    }
       
}


#Preview {
    WorkoutList()
}





