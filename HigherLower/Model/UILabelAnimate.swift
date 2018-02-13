//
//  UILabelAnimate.swift
//  HigherLower
//
//  Created by Matilda Dahlberg on 2018-02-12.
//  Copyright © 2018 Matilda Dahlberg. All rights reserved.
//

import Foundation
import UIKit

extension UILabel
{
    
    //både pulsing/pulse, flash och shake är ganska lika funktioner, med bara lite skillnader på namn osv.
    
    func bounce(){
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.3
        pulse.fromValue = 0.5
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.5
        pulse.damping = 5.0
        
        layer.add(pulse, forKey: nil)
}

}
