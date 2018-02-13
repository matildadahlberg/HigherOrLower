//
//  ViewControllerFirstPage.swift
//  HigherLower
//
//  Created by Matilda Dahlberg on 2018-02-08.
//  Copyright © 2018 Matilda Dahlberg. All rights reserved.
//

import UIKit

class ViewControllerFirstPage: UIViewController
{
    
    @IBOutlet weak var TextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextView.text = NSLocalizedString("text_page", comment: "")
        
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        sender.pulsate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    
    
    
}


