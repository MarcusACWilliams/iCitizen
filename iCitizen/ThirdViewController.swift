//
//  ThirdViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/5/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var steps: [NSAttributedString] = []
    var nos: [String] = []
    var tips: [String] = []
    var questions: [String] = []
    var index = 0
    var backFlag = true
    
    
    @IBOutlet weak var stepLable: UILabel!
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var homeButton: UIButton!
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
        noButton.isEnabled = true
        
        if (index == steps.count-1)
        {
            yesButton.isEnabled = false
        }else{yesButton.isEnabled = true}
    }
    
    @IBAction func no(_ sender: UIButton) {
        stepLable.text = nos[index]
        stepLable.sizeToFit()
        noButton.isEnabled = false
        backButton.isEnabled = true
        
        //Tell back button to take you back to the original question instead of the previous question
        backFlag = false
        
    }
    
    @IBAction func Back(_ sender: UIButton) {
        
        //If this flag is false we need to go back to our original question and not the previous one
        if (backFlag){index = index - 1}
        
        stepLable.attributedText = steps[index]
        stepLable.sizeToFit()
        questionLabel.text = questions[index]
        questionLabel.sizeToFit()
        tipText.text = tips[index]
        
        yesButton.isEnabled = true
        noButton.isEnabled = true
        backFlag = true
        if (index < 1){backButton.isEnabled = false }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonFormatting()
        backButton.isEnabled = false
        stepLable.numberOfLines = 0
        tipText.numberOfLines = 0
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = NSTextAlignment.center
        
        /*The four arrays I am using are tips- these are displayed in the top right coner of the page and give random useful information to the user.
         steps- contains the text in the middle of the page. This is where the most relavent information is displayed. Questions- These are displayed at the bottom-center positon right above the yes/no buttons. These help us get responses from the user and move the guide forward. Nos- contains an array or repsonses that apply to NO answers in the guide.*/
        
        tips = ["\"Stop and Frisk\" has been declared unconstitutional by the United States Supreme Court. This means you do not need to consent to a pat down on the street unless the officer can show reasonable suspicion","A Peace Officer cannot demand that you show them Idenification without cause", ""]
        
        questions = ["Does the Officer suspect that you are commiting or in the process of commiting a crime?","Has the Officer informed you that you are being Detained?", "Do You have all these documents?", ""]
        
        nos = ["Don't Worry about finding the perfect spot to stop. Just use your best judgment and try to avoid obvious hazards", "", ""]
        
        //Below is the html text template. You can format text just like an html document and the output will be almost perfect
        /*"<!DOCTYPE html><html><body style=\"color:white\"><h1>TEXT GOES HERE</h1></body></html>".convertHtml()*/
        
        steps.append("<!DOCTYPE html><html><body style=\"color:white\"><h1>First things first. DON'T PANIC! Routine traffic stops are nothing to be afraid of. Just remeber to be polite and cooperative and everything will go smoothly.<br>Now make sure you are parked in a safe well lit area.</h1></body></html>".convertHtml())
        
        steps.append( "<!DOCTYPE html><html><body style=\"color:white\"><h2>Now that you're in a safe area let's get ready for he officer.<ul><li>Roll Down your diver side window and turn on your cabin light above your head</li><li>In most States you will need the following:<ul><li>Your Driver's License</li><li>Your Auto Insurance card. **If your insurance company issues digital cards you can bring it up on your cellphone**</li><li>Your Vehicle Regristration<h4>**You may not have a registraion card.Look for a registraion sticker on the lower left corner of your windshield**</h4></li></li></ul> </ul></h2></body></html>".convertHtml())
        
        steps.append("<!DOCTYPE html><html><body style=\"color:white\"><h1>TEXT GOES HERE</h1></body></html>".convertHtml())
        
        
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
    
    
    //Place Any custom button design stuff here
    func buttonFormatting()
    {
        yesButton.clipsToBounds = true
        yesButton.layer.cornerRadius = 50
        yesButton.layer.opacity = 60.0
        noButton.clipsToBounds = true
        noButton.layer.cornerRadius = 50
        noButton.layer.opacity = 60.0
        homeButton.clipsToBounds = true
        homeButton.layer.cornerRadius = 25
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 25
        
    }
    
//            pedstop.textColor = UIColor.white
//                    pedstop.text = "1) BE POLITE!\n 2) Ask the Officer if you are being detained.\n 3) If you are being detained politely ask the why.\n 4) At this point you will need to use some discretion. You are only required to comply the officers demands if they have reasonable suspicion that you are commiting a crime\n 5) If the officer does not have a cause to detain you, you are under no obligation to comply with is demands. i.e. giving him/her your I.D."
    
}
