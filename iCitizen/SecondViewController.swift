//
//  SecondViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/5/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var steps: [NSAttributedString] = []
    var stepsun: [String] = []
    var tips: [String] = []
    var questions: [String] = []
    var index = 0
    
    
    @IBOutlet weak var stepLable: UILabel!
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBAction func yes(_ sender: UIButton) {
        index = index + 1
        stepLable.attributedText = steps[index]
        stepLable.sizeToFit()
        questionLabel.text = questions[index]
        questionLabel.sizeToFit()
        tipText.text = tips[index]
        
        backButton.isEnabled = true
        
        if (index == steps.count-1)
        {
            yesButton.isEnabled = false
        }else{yesButton.isEnabled = true}
    }
    
    @IBAction func no(_ sender: UIButton) {
        
        
    }
    
    @IBAction func Back(_ sender: UIButton) {
        index = index - 1
        
        stepLable.attributedText = steps[index]
        stepLable.sizeToFit()
        questionLabel.text = questions[index]
        questionLabel.sizeToFit()
        tipText.text = tips[index]
        
        yesButton.isEnabled = true
        if (index < 1){backButton.isEnabled = false }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonFormatting()
        stepLable.numberOfLines = 0
        tipText.numberOfLines = 0
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = NSTextAlignment.center
        
        //var tempString: [NSMutableAttributedString] = []
        
        var myMutableString = NSMutableAttributedString()
        
        tips = ["First tip...","You are perfectly within your rights to contiune drving untill you find a suitable spot to stop. Turn on your hazard lights and give and idication to the officer that you intended to pull over"]
        
        stepsun = ["First things first. DON'T PANIC! Routine traffic stops are nothing to be afraid of. Just remeber to be polite and cooperative and everything will go smoothly.\n\nFirst make sure you are parked in a safe well lit area.","Now that you're in a safe area let's get ready for he officer.\n", ]

        
        questions = ["Are you in a safe Area?", "Do You have all these documents?"]
        
        var i = 0
        while (i < stepsun.count){
        
        myMutableString = NSMutableAttributedString(string: stepsun[i], attributes: [NSAttributedStringKey.font:UIFont(name: "Georgia", size: 20.0)!])
        
        steps.append(myMutableString)
            i += 1
        }
        
//        steps[1].append(Helper.bulletedList(strings: ["Roll Down your diver side window and turn on your cabin light above your head" ,"In most States you will need the following:\nYour Drivers License\nYour Auto Insurance card. **If your insurance company issues digital cards you can bring it up on your cellphone**\nYour Vehicle Regristration **You may not have a registraion card.Look for a registraion sticker on the lower left corner of your windshield**"], textColor: UIColor.white, font:UIFont(name:"Georgia", size: 20.0)!, bulletColor: UIColor.white, bulletSize: 40))
        
        steps[1] = "<!DOCTYPE html><html><body style=\"color:white\"><h2>Now that you're in a safe area let's get ready for he officer.<ul><li>Roll Down your diver side window and turn on your cabin light above your head</li><li>In most States you will need the following:<ul><li>Your Driver's License</li><li>Your Auto Insurance card. **If your insurance company issues digital cards you can bring it up on your cellphone**</li><li>Your Vehicle Regristration\\n<h4>**You may not have a registraion card.Look for a registraion sticker on the lower left corner of your windshield**</h4>b</li></li></ul> </ul></h2></body></html>".convertHtml()


         stepLable.attributedText = steps[0]
        stepLable.font = UIFont(name:"Georgia", size: 20.0)
         stepLable.sizeToFit()
         questionLabel.text = questions[index]
         questionLabel.sizeToFit()
         tipText.text = tips[0]
         tipText.textColor = UIColor.white
         backButton.isEnabled = false
        
//        stepLable.attributedText = "<!DOCTYPE html><html><body><h1>This is heading 1</h1><h2>This is heading 2</h2><h3>This is heading 3</h3><h4>This is heading 4</h4><h5>This is heading 5</h5><h6>This is heading 6</h6></body></html>".convertHtml()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonFormatting()
    {
        yesButton.clipsToBounds = true
        yesButton.layer.cornerRadius = 50
        yesButton.layer.opacity = 60.0
        noButton.clipsToBounds = true
        noButton.layer.cornerRadius = 50
        noButton.layer.opacity = 60.0

        
    }
}

