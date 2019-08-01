//
//  AddVideoViewController.swift
//  Strings
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Olympia Elbech. All rights reserved.
//

import UIKit

class AddVideoViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //Connect button to code by creating an action
    //this function opens Youtube on Safari
    //back button once website is opened is labeled with the name of your app

    @IBAction func upload(_ sender: Any) {
         UIApplication.shared.open(URL(string:"https://accounts.google.com/ServiceLogin/signinchooser?service=youtube&uilel=3&passive=true&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26hl%3Den%26next%3D%252Fupload&hl=en&flowName=GlifWebSignIn&flowEntry=ServiceLogin")! as URL, options: [:], completionHandler: nil)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
