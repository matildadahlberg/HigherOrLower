//
//  UIImageViewEffect.swift
//  HigherLower
//
//  Created by Matilda Dahlberg on 2018-02-07.
//  Copyright © 2018 Matilda Dahlberg. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView
{
    
    //både pulsing/pulse, flash och shake är ganska lika funktioner, med bara lite skillnader på namn osv.
    
    func pulsing(){
        
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
    
    
    func flash(){
        let flash = CABasicAnimation(keyPath: "opacity")//Här är animationen för flash.
        flash.duration = 0.2
        flash.fromValue = 1 //animerar från 100%
        flash.toValue = 0.1 //till 10%
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut) //Det här är för animation ska starta långsamt och avsluta långsamt
        flash.autoreverses = true
        flash.repeatCount = 1
        
        layer.add(flash, forKey: nil)
    }
    
    
    
    func shake(){
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 1
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 5, y: center.y) //CGPoint är vart knappen är på skärmen, så här rör sig knappen 5points till vänster.
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)//och här rör sig knappen 5points till höger
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }
    
}


