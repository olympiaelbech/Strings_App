//
//  keyboardViewController.swift
//  Strings
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Olympia Elbech. All rights reserved.
//

import UIKit

class SixthKeyboardViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate{
    
    
    @IBOutlet weak var textfieldOne: UITextField!
    @IBOutlet weak var textviewOne: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textfieldOne.delegate = self
        self.textviewOne.delegate = self
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
    
}
