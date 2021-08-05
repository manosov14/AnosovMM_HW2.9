//
//  Animation.swift
//  AnosovMM_HW2.9
//
//  Created by Михаил on 04.08.2021.
//

import Spring

struct Animation {
    let animation: String
    var nextAnimation: String {
        getNextAnimation()
    }
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension Animation {
    static func getAnimation() -> Animation {
        Animation(animation: DataManager.shared.animation.randomElement()?.rawValue ?? "",
                  curve: DataManager.shared.curve.randomElement()?.rawValue ?? "",
                  force: CGFloat(2),
                  duration: CGFloat(Int.random(in: 1...2)),
                  delay: CGFloat(0))
    }
        
    private func getNextAnimation() -> String {
        var currentAnimationIndex = 0
        let nextAnimationIndex = currentAnimationIndex + 1
        var nextAnimation = ""
        
        for index in DataManager.shared.animation {
            
            if index.rawValue == animation {
                break
            } else { currentAnimationIndex += 1 }
        }
        
        nextAnimation = DataManager.shared.animation[nextAnimationIndex].rawValue
        return nextAnimation
    }
}
