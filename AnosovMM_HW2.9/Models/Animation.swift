//
//  Animation.swift
//  AnosovMM_HW2.9
//
//  Created by Михаил on 04.08.2021.
//

import Spring

struct Animation {
    var animation: String
    var nextAnimation: String {
        getNextStep()
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
                  //                  force: CGFloat(Int.random(in: 1...2)),
                  duration: CGFloat(Int.random(in: 1...2)),
                  delay: CGFloat(0))
        //        delay: CGFloat(Int.random(in: 1...2)))
    }
    
    private func getNextStep() -> String {
    
            var currentAnimateIndex = 0
            let nextAnimateIndex = currentAnimateIndex + 1
    
            for index in DataManager.shared.animation {
    
                if index.rawValue == animation {
                    continue
                } else { currentAnimateIndex += 1 }
            }
            let nextStep = DataManager.shared.animation[nextAnimateIndex].rawValue
            return nextStep
        }
}
