//
//  SecondViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/5/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class thirdview: UIViewController {
    
    @IBOutlet weak var pedstop: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pedstop.textColor = UIColor.white
        pedstop.text = "1) BE POLITE!\n 2) Ask the Officer if you are being detained.\n 3) If you are being detained politely ask the why.\n 4) At this point you will need to use some discretion. You are only required to comply the officers demands if they have reasonable suspicion that you are commiting a crime\n 5) If the officer does not have a cause to detain you, you are under no obligation to comply with is demands. i.e. giving him/her your I.D."
         //Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
