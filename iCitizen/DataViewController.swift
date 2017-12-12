//
//  DataViewController.swift
//  test
//
//  Created by Marcus Williams on 12/11/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    


    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    
    
    @IBAction func yes(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }
    
    
}
