//
//  ViewController.swift
//  GG1L2Coffe
//
//  Created by Ivan Vasilevich on 5/7/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var finderFace: FaceView!
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        finderFace.faceColor = UIColor(red: CGFloat(arc4random_uniform(255))/255, green: CGFloat(arc4random_uniform(255))/255, blue: CGFloat(arc4random_uniform(255))/255, alpha: 1)
        finderFace.setNeedsDisplay()
    }
    @IBAction func changeHappyLevel(_ sender: UISlider) {
        finderFace.happyLevel = sender.value
        finderFace.isHidden = true
    }

}

