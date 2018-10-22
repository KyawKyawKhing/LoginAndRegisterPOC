//
//  RegisterViewController.swift
//  Day2_LoginApp
//
//  Created by AcePlus101 on 10/21/18.
//  Copyright © 2018 AcePlus. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var vDOB: UIView!
    @IBOutlet weak var tfDOB: UITextField!
    @IBOutlet weak var tvFullAddress: UITextView!
    @IBOutlet weak var dpDOB: UIDatePicker!
    
    var dpShowDateVisible = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.dpDOB.visiblity(gone: true, dimension: 0)
        dpDOB.datePickerMode = UIDatePicker.Mode.date
        
        self.vDOB.layer.borderWidth = 1
        self.vDOB.layer.cornerRadius = 4 as CGFloat
        self.vDOB.layer.borderColor = UIColor(red:205.0/255.0, green:205.0/255.0, blue:205.0/255.0, alpha: 1.0).cgColor
        
        self.tvFullAddress.layer.borderWidth = 1
        self.tvFullAddress.layer.cornerRadius = 4 as CGFloat
        self.tvFullAddress.layer.borderColor = UIColor(red:205.0/255.0, green:205.0/255.0, blue:205.0/255.0, alpha: 1.0).cgColor
    }
    override func viewDidAppear(_ animated: Bool) {
        self.dpDOB.visiblity(gone: true, dimension: 0)
    }

    @IBAction func onClickDobButton(_ sender: UIButton) {
        if dpShowDateVisible {
//            dpDOB.isHidden = false
             self.dpDOB?.visiblity(gone: false, dimension: 150)
        }else {
//            dpDOB.isHidden = true
             self.dpDOB?.visiblity(gone: true, dimension: 0)
        }
        dpShowDateVisible = !dpShowDateVisible
       

    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onClickRegister(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
extension UIView {
    
    func visiblity(gone: Bool, dimension: CGFloat = 0.0, attribute: NSLayoutConstraint.Attribute = .height) -> Void {
        if let constraint = (self.constraints.filter{$0.firstAttribute == attribute}.first) {
            constraint.constant = gone ? 0.0 : dimension
            self.layoutIfNeeded()
            self.isHidden = gone
        }
    }
}
