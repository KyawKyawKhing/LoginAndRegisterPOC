//
//  SecondViewController.swift
//  Day2_LoginApp
//
//  Created by AcePlus101 on 10/21/18.
//  Copyright © 2018 AcePlus. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    var name:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = name
    }
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
