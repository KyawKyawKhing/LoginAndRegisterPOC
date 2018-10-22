//
//  ViewController.swift
//  Day2_LoginApp
//
//  Created by AcePlus101 on 10/21/18.
//  Copyright © 2018 AcePlus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblForgotPassword: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.addTarget(self, action: #selector(onClickLogin), for: .touchUpInside)
        btnRegister.addTarget(self, action: #selector(onClickRegister), for: .touchUpInside)
    }

    @objc func onClickLogin(){
        let username = tfName.text!
        let password = tfPassword.text!
        if username.elementsEqual("admin") && password.elementsEqual("1234"){
             print("login success")
//            performSegue(withIdentifier: Constants.SegueId.LOGIN_SEGUE, sender: "Hello \(username)")
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let navigationVC = self.storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! UINavigationController
            let vc = navigationVC.viewControllers[0] as! SecondViewController
            vc.name = "Hello \(username)"
           self.present(navigationVC, animated: true, completion: nil)
        }else{
            print("login failed")}
    }
    
    @objc func onClickRegister(){
        let navigationVC = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! UINavigationController
        self.present(navigationVC, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == Constants.SegueId.LOGIN_SEGUE{
//            let vc = segue.destination as! SecondViewController
//            vc.name = sender as? String
//        }
//    }

}

