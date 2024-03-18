//
//  MeditationViewMOdel.swift
//  LearnFrench
//
//  Created by Joao Leal on 3/18/24.
//
import Observation
import Foundation

@Observable
final class LearningViewModel{
    private(set) var learning: Learning
    
    init(learning: Learning) {
        self.learning = learning
    }
}
struct Learning {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Learning(title: "Learn French While You Sleep", description: "8 hours of Relaxing French - Most Important Phrases and Words", duration: 120, track: "french1", image: "sleeping")
}
