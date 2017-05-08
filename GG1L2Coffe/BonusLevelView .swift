//
//  BonusLevelView .swift
//  GG1L2Coffe
//
//  Created by Ivan Vasilevich on 5/7/17.
//  Copyright © 2017 Smoosh Labs. All rights reserved.
//

import UIKit

class BonusLevelView_: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        setup()
    }
    
    func setup() {
        backgroundColor = .clear
    }

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let outCircle = UIBezierPath.init(ovalIn: CGRect(x: 137, y: 0, width: 104, height: 104))
        UIColor.lightGray.setFill()
        outCircle.fill()
        
        
        // Drawing code
        

        let clipCircle = UIBezierPath.init(ovalIn: CGRect(x: 137, y: 0, width: 104, height: 104))
        UIColor.clear.setFill()
        UIColor.clear.set()
        clipCircle.fill()
        clipCircle.stroke()
        
        clipCircle.addClip()
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 77.5, y: 58.5))
        bezierPath.addCurve(to: CGPoint(x: 135.5, y: 80.5), controlPoint1: CGPoint(x: 126.5, y: 58.5), controlPoint2: CGPoint(x: 96.5, y: 100.5))
        bezierPath.addCurve(to: CGPoint(x: 174.5, y: 60.5), controlPoint1: CGPoint(x: 174.5, y: 60.5), controlPoint2: CGPoint(x: 136.5, y: 37.5))
        bezierPath.addCurve(to: CGPoint(x: 222.5, y: 73.5), controlPoint1: CGPoint(x: 212.5, y: 83.5), controlPoint2: CGPoint(x: 222.5, y: 73.5))
        UIColor.black.setStroke()
        bezierPath.lineWidth = 2
        bezierPath.stroke()
        
//
//        let wavePath = UIBezierPath()
//        wavePath.move(to: CGPoint(x: 137, y: 270))
//        wavePath.addCurve(to: CGPoint(x:240, y:270), controlPoint1: CGPoint(x:165, y:255), controlPoint2: CGPoint(x:220, y:261))
////        wavePath.addLine(to: CGPoint(x:240, y:104))
////        wavePath.addLine(to: CGPoint(x:137, y:104))
//        wavePath.close()
//       wavePath.lineWidth = 4
//        UIColor.purple.set()
//        wavePath.stroke()
//        wavePath.fill()
        
        
        
    }


}
