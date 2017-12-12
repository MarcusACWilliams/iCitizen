//
//  SecondViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/5/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var steps: [String] = []
    var tips: [String] = []
    var questions: [String] = []
    
    @IBOutlet weak var text: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        text .sizeToFit()
        
        tips = [ "You are perfectly within your rights to contiune drving untill you find a suitable spot to stop. Turn on your hazard lights and give and idication to the officer that you intended to pull over"]
        
        steps = ["First things first. Don't Panic! Routine traffic stops are nothing to be afraid of. Just remeber to be polite and cooperative and everything will go smoothly.\n\t(1)First make sure you are parked in a safe well lit area.","Now that you're in a safe area let's get ready for he officer.\n\t(1) Roll Down your diver side window and turn on your cabin light above your head\n\t(2) In most States you will need the following:\n\t\t\t\tYour Drivers Liscencse\n\t\t\t\tYour Auto Insurance card. If your insurance company issues digital cards you can bring it up on your cellphone\n\t\t\t\tYour Vehicle Regristration *Note You may not have a registraion card. You might have a sticker on the lower left corner of your windshield" ]
        
        questions = ["Are you in a safe Area?"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

