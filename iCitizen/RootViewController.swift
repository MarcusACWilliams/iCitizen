//
//  RootViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/4/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UIPageViewControllerDelegate {

    
    var pageViewController: UIPageViewController?
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var drive: UIButton!
    @IBOutlet weak var walk: UIButton!
    @IBOutlet weak var house: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Configure the page view controller and add it as a child view controller.
       drive.clipsToBounds = true
       drive.layer.cornerRadius = 50
        walk.clipsToBounds = true
        walk.layer.cornerRadius = 50
        house.clipsToBounds = true
        house.layer.cornerRadius = 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


