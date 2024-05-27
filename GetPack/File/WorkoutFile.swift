//
//  Test.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//
import SwiftUI

struct Workout: Identifiable {
    let id = UUID()
    let videoWO: String
    let nameWO: String
    let descriptionWO: String
    let muscleImage: String
    let focusArea: [String]
    let imageWorkout: String
    let titleWorkout: String
    let timeWorkout: String
}
let workouts = [
    Workout(
        videoWO: "Jumping Jack Video",
        nameWO: "JUMPING JACKS",
        descriptionWO: """
        Stand upright with your feet together and your arms at your sides. Jump up, spreading your legs shoulder-width apart while simultaneously raising your arms above your head.
        Jump again, bringing your feet back together and lowering your arms to your sides. Repeat this motion continuously, maintaining a steady rhythm.
        """,
        muscleImage: "Otot Jumping",
        focusArea: ["Shoulders", "Quadriceps", "Adducters", "Glutes"],
        imageWorkout: "Jumping Jack",
        titleWorkout: "JUMPING JACKS",
        timeWorkout: "00:20"
    ),
    Workout(
        videoWO: "Abdominal Crunch Video",
        nameWO: "ABDOMINAL CRUNCH",
        descriptionWO: """
        Lie on your back with your knees bent and your feet flat on the floor, hip-width apart. Place your hands behind your head, elbows pointing out to the sides, and keep your lower back pressed into the ground.
        Contract your abdominal muscles and lift your head, neck, and shoulder blades off the floor. Hold the position for a moment, then slowly lower yourself back down. Repeat this motion continuously, ensuring you use your abs to lift rather than pulling on your neck.
        """,
        muscleImage: "Otot Abdominal",
        focusArea: ["Abs"],
        imageWorkout: "Abdominal",
        titleWorkout: "ABDOMINAL CRUNCH",
        timeWorkout: "X 16"
    ),
    Workout(
        videoWO: "Russian Twist Video",
        nameWO: "RUSSIAN TWIST",
        descriptionWO: """
        Sit on the floor with your knees bent and your feet flat on the ground. Lean back slightly, keeping your back straight, and lift your feet a few inches off the floor, balancing on your sit bones. Clasp your hands together in front of you.
        Rotate your torso to the right, bringing your clasped hands beside your hip. Then, rotate to the left, bringing your hands to the other side. Repeat this twisting motion continuously, engaging your core and maintaining your balance throughout the exercise.
        """,
        muscleImage: "Otot Russian",
        focusArea: ["Abs"],
        imageWorkout: "Russian",
        titleWorkout: "RUSSIAN TWIST",
        timeWorkout: "x 20"
    ),
    Workout(
        videoWO: "Climbing Mountain Video",
        nameWO: "MOUNTAIN CLIMBER",
        descriptionWO: """
        Begin in a plank position, hands aligned under your shoulders and body forming a straight line. Alternate driving each knee towards your chest in a dynamic, running-like motion while keeping your hips low and your core engaged. Maintain a steady rhythm as you switch legs, aiming for controlled movements to maximize effectiveness.
        Focus on stability and control as you perform the mountain climbers, ensuring your core remains engaged throughout. Keep your breathing steady and maintain proper form to get the most out of this dynamic exercise.
        """,
        muscleImage: "Otot Mountain",
        focusArea: ["Abs", "Glutes", "Lower Back", "Calves", "Quadriceps"],
        imageWorkout: "Mountain",
        titleWorkout: "MOUNTAIN CLIMBER",
        timeWorkout: "x 16"
    ),
    Workout(
        videoWO: "Heel Touch Video",
        nameWO: "HEEL TOUCH",
        descriptionWO: """
        Lie on your back with knees bent and feet flat on the floor. Lift your head and shoulders slightly off the ground, engaging your core. Alternate reaching towards each heel with your hands, focusing on controlled movements to target your abdominal muscles effectively.
        Maintain a steady pace throughout the exercise, avoiding any jerky motions. Repeat for a set number of repetitions or duration to strengthen your core and improve abdominal muscle endurance.
        """,
        muscleImage: "Otot Heel Touch",
        focusArea: ["Abs"],
        imageWorkout: "Heel Touch",
        titleWorkout: "HEEL TOUCH",
        timeWorkout: "x 20"
    ),
    Workout(
        videoWO: "Leg Raises Video",
        nameWO: "LEG RAISES",
        descriptionWO: """
        Lie flat on your back with your legs extended and your arms resting by your sides. Engage your core muscles by pressing your lower back into the floor. Slowly lift both legs off the ground simultaneously, keeping them straight, until they are perpendicular to the floor or as far as you can comfortably manage. Pause briefly at the top of the movement to fully engage your abdominal muscles.
        With controlled movements, lower your legs back down to the starting position, ensuring to keep your lower back pressed against the floor throughout the exercise. Avoid swinging your legs or using momentum to lift them. Focus on using your core strength to perform the leg raises. Repeat for the desired number of repetitions, maintaining proper form to effectively target your abdominal muscles.
        """,
        muscleImage: "Otot Leg",
        focusArea: ["Abs", "Glutes", "Quadriceps"],
        imageWorkout: "Leg",
        titleWorkout: "LEG RAISES",
        timeWorkout: "x 16"
    ),
    Workout(
        videoWO: "Plank Video",
        nameWO: "PLANK",
        descriptionWO: """
        To perform a plank, start by assuming a push-up position, with your hands directly beneath your shoulders and your body forming a straight line from head to heels. Engage your core muscles by pulling your belly button towards your spine and squeezing your glutes. Hold this position, ensuring that your hips are neither too high nor too low, and maintain a straight line from your head to your heels. Keep your neck aligned with your spine and your gaze down towards the floor to avoid strain.
        Focus on steady breathing throughout the exercise, and aim to hold the plank for at least 20-30 seconds initially, gradually increasing the duration as you build strength. The plank is an effective core-strengthening exercise that also engages your shoulders, arms, and legs.
        """,
        muscleImage: "Otot Plank",
        focusArea: ["Abs", "Glutes", "Quadriceps"],
        imageWorkout: "Plank",
        titleWorkout: "PLANK",
        timeWorkout: "00:20"
    ),
    Workout(
        videoWO: "Cobra Video",
        nameWO: "COBRA STRETCH",
        descriptionWO: """
        Lie down on your stomach and bend your elbows, placing your hands beneath your shoulders. Engage your core muscles and press your palms firmly into the ground as you lift your chest up off the floor, extending your arms. Hold this position for a few seconds, focusing on opening up your chest and lengthening your spine.
        Maintain steady breathing throughout the stretch, and be mindful not to strain your neck or shoulders. Feel the stretch along the front of your torso and abdomen. To release, gently lower your chest back down to the floor and relax. The cobra stretch is a beneficial yoga pose for improving spine flexibility and relieving tension in the lower back.
        """,
        muscleImage: "Otot Cobra",
        focusArea: ["Abs", "Glutes", "Lower Back", "Hamstring"],
        imageWorkout: "Cobra Stretch",
        titleWorkout: "COBRA STRETCH",
        timeWorkout: "00:20"
    ),
    Workout(
        videoWO: "Spine Lumbar Twist Left Video",
        nameWO: "SPINE LUMBAR TWIST STRETCH LEFT",
        descriptionWO: """
        Lie on your back with your legs extended. Exhale as you lift your left leg up and use your right hand to gently guide your left knee across your body to the right side. Keep your other arm extended to the side on the floor for stability.
        Breathe naturally as you hold this position, feeling the gentle stretch through your lower back and outer thigh. Hold for a few seconds, allowing your body to relax into the stretch. Repeat on the other side as needed. This supine twist is an effective yoga pose for releasing tension in the spine and improving flexibility.
        """,
        muscleImage: "Otot Spine LR",
        focusArea: ["Shoulders", "Quadriceps"],
        imageWorkout: "Spine L",
        titleWorkout: "SPINE LUMBAR TWIST STRETCH LEFT",
        timeWorkout: "00:30"
    ),
    Workout(
        videoWO: "Spine Lumbar Twist Right Video",
        nameWO: "SPINE LUMBAR TWIST STRETCH RIGHT",
        descriptionWO: """
        Lie on your back with your legs extended. As you exhale, lift your right leg up and gently guide your right knee across your body to the left using your left hand. Keep your other arm extended to the side on the floor for support and balance.
        Breathe naturally as you hold this position, feeling the stretch along your lower back and outer thigh. Hold for a few seconds, allowing your body to relax and deepen into the stretch. Release and repeat on the other side as desired. This supine twist is beneficial for releasing tension in the spine and improving overall flexibility.
        """,
        muscleImage: "Otot Spine LR",
        focusArea: ["Shoulders", "Quadriceps"],
        imageWorkout: "Spine R",
        titleWorkout: "SPINE LUMBAR TWIST STRETCH RIGHT",
        timeWorkout: "00:30"
    )
]
