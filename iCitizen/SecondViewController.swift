//
//  SecondViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/5/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var steps: [NSMutableAttributedString] = []
    var stepsun: [String] = []
    var tips: [String] = []
    var questions: [String] = []
    var index = 0
    
    
    @IBOutlet weak var stepLable: UILabel!
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func yes(_ sender: UIButton) {
        stepLable.attributedText = steps[index + 1]
        stepLable.sizeToFit()
        tipText.text = tips[index+1]
        backButton.isEnabled = true
        
    }
    
    @IBAction func no(_ sender: UIButton) {
    }
    
    @IBAction func Back(_ sender: UIButton) {
        stepLable.attributedText = steps[index - 1]
        stepLable.sizeToFit()
        tipText.text = tips[index-1]
        
        if (index < 1)
        {
            backButton.isEnabled = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepLable.numberOfLines = 0
        tipText.numberOfLines = 0
        
        var myMutableString = NSMutableAttributedString()
        
        tips = ["First tip...","You are perfectly within your rights to contiune drving untill you find a suitable spot to stop. Turn on your hazard lights and give and idication to the officer that you intended to pull over"]
        
        stepsun = ["First things first. Don't Panic! Routine traffic stops are nothing to be afraid of. Just remeber to be polite and cooperative and everything will go smoothly.\n\n(1)First make sure you are parked in a safe well lit area.","Now that you're in a safe area let's get ready for he officer.\n(1) Roll Down your diver side window and turn on your cabin light above your head\n(2) In most States you will need the following:\n\tYour Drivers Liscencse\n\tYour Auto Insurance card.\n*Note If your insurance company issues digital cards you can bring it up on your cellphone\nYour Vehicle Regristration *Note You may not have a registraion card. You might have a sticker on the lower left corner of your windshield" ]
        
        questions = ["Are you in a safe Area?"]
        
        var i = 0
        while (i < stepsun.count){
        
        myMutableString = NSMutableAttributedString(string: stepsun[i], attributes: [NSAttributedStringKey.font:UIFont(name: "Georgia", size: 20.0)!])
        myMutableString.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.red, range: NSRange(location:2,length:4))
        
        steps.append(myMutableString)
            i += 1
        }

         stepLable.attributedText = steps[0]
         stepLable.sizeToFit()
         tipText.text = tips[0]
         backButton.isEnabled = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

