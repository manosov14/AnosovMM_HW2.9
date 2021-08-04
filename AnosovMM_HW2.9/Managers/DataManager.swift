//
//  DataManager.swift
//  AnosovMM_HW2.9
//
//  Created by Михаил on 04.08.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()

    var animation: [Spring.AnimationPreset] = Spring.AnimationPreset.allCases
    var curve: [Spring.AnimationCurve] = Spring.AnimationCurve.allCases
//    var nextStep: String
    
    private init() {}
}

//extension DataManager {
//    private func getNextStep() -> String {
//
//        var currentAnimateIndex = 0
//        let nextAnimateIndex = currentAnimateIndex + 1
//
//        for index in animation {
//
//            if index.rawValue == animation {
//                break
//            } else { currentAnimateIndex += 1 }
//        }
//        let nextStep = DataManager.shared.animation[nextAnimateIndex].rawValue
//        return nextStep
//    }
//}
