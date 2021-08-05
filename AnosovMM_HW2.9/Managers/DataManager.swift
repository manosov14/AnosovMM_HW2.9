//
//  DataManager.swift
//  AnosovMM_HW2.9
//
//  Created by Михаил on 04.08.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    var animation  = Spring.AnimationPreset.allCases
    var curve = Spring.AnimationCurve.allCases
    
    private init() {}
}
