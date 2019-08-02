//
//  keyboardViewController.swift
//  Strings
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Olympia Elbech. All rights reserved.
//

import UIKit

class SeventhKeyboardViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var textfieldOne: UITextField!    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textfieldOne.delegate = self
    }
    
    //Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Press return key hides keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return(true)
    }
    @IBAction func upload(_ sender: Any) {         UIApplication.shared.open(URL(string:"https://www.youtube.com/watch?v=GJ65LTq282o")! as URL, options: [:], completionHandler: nil)
    }
    
}
