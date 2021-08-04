//
//  ViewController.swift
//  AnosovMM_HW2.9
//
//  Created by Михаил on 02.08.2021.
//

import Spring


class SpringAnimationViewController: UIViewController {
    
    @IBOutlet weak var animationViewOU: SpringView!
    @IBOutlet weak var animationViewButtonOU: UIButton!
    @IBOutlet weak var paramsLabelOU: UILabel!
    
    private var animationUnit = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationViewOU.layer.cornerRadius = animationViewOU.frame.height / 20
        animationViewButtonOU.layer.cornerRadius = animationViewButtonOU.frame.height / 20
        animationViewButtonOU.setTitle("Press for animate", for: UIControl.State.normal)
    }
    
    @IBAction func animateAction(_ sender: SpringButton) {
        
        
        animationUnit = Animation.getAnimation()
        animationViewButtonOU.setTitle("\(animationUnit.nextAnimation)", for: UIControl.State.normal)
        animationViewOU.animation = animationUnit.animation
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
