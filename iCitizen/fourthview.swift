//
//  fourthview.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/8/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class fourthview: UIViewController {
    
    
   
    @IBOutlet weak var trafficstop: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficstop.textColor = UIColor.white
        trafficstop.text = "1) Grab your Documentation\n This includes:\n\t\tYour Drivers Liscense\n\t\tYour Auto insurance card\n\t\tYour vehicle registration\n 2) Roll down our drivers side window\n 3) Follow the officers instructions and keep your hands visible at all times"
        // Do any additional setup after loading the view.
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
    //test
}

