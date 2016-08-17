//
//  ViewController.swift
//  AlohaDemo
//
//  Created by Xin Wang on 8/17/16.
//  Copyright © 2016 Xin Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cls = TestClass()
        cls.echo()
        cls.getIPAddress { (ipAddress) in
            NSLog("IP: \(ipAddress)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

