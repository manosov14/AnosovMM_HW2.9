//
//  ViewController.swift
//  AnosovMM_HW2.9
//
//  Created by Михаил on 02.08.2021.
//

import Spring


class SpringAnimationViewController: UIViewController {
    //MARK: IB Outlets
    
    @IBOutlet weak var animationViewOU: SpringView!
    @IBOutlet weak var animationViewButtonOU: SpringButton!
    @IBOutlet weak var paramsLabelOU: SpringLabel!
    
    //MARK: Private properties
    private var animationUnit = Animation.getAnimation()
    private var firstLunch = true
    private var nextAnimation = ""
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        animationViewOU.layer.cornerRadius = animationViewOU.frame.height / 20
        animationViewButtonOU.layer.cornerRadius = animationViewButtonOU.frame.height / 10
        animationViewButtonOU.setTitle("\(animationUnit.nextAnimation)", for: UIControl.State.normal)
        paramsLabelOU.isHidden = true
    }
    
    @IBAction func animateAction(_ sender: SpringButton) {
        
        animationUnit = Animation.getAnimation()
        firstLunch = false
        
        switch firstLunch {
        case true:
            animationViewOU.animation = animationUnit.animation
        default:
            animationViewOU.animation = animationUnit.nextAnimation
        }
        
        paramsLabelOU.isHidden = false
        animationViewButtonOU.setTitle("\(animationUnit.nextAnimation)", for: UIControl.State.normal)
        animationViewOU.animation = animationUnit.animation
        nextAnimation = animationUnit.nextAnimation
        animationViewOU.curve = animationUnit.curve
        animationViewOU.force = animationUnit.force
        animationViewOU.duration = animationUnit.duration
        animationViewOU.delay = animationUnit.delay
        paramsLabelOU.text = """
            animation: \(animationUnit.animation)
            curve: \(animationUnit.curve)
            force: \(animationUnit.force)
            duration: \(animationUnit.duration)
            delay: \(animationUnit.delay)
            """
        animationViewOU.animate()
    }
}
