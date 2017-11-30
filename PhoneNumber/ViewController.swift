//
//  ViewController.swift
//  PhoneNumber
//
//  Created by Charlie Cuddy on 11/26/17.
//  Copyright © 2017 Charlie Cuddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    
    @IBOutlet weak var savedNumber: UILabel!
    
    @IBAction func submitNumb(_ sender: Any) {
        UserDefaults.standard.set(phoneNumber.text, forKey: "number")
        savedNumber.text = "Number Submitted"
        print("Number Submitted")
        viewDidLoad()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("page loaded")
        // Do any additional setup after loading the view, typically from a nib.
    
        let numberObject = UserDefaults.standard.object(forKey: "number")
    
        if let newNumber = numberObject as? String {
            //savedNumber.text = "Your submitted number is: \n\(newNumber)"
            print("The submitted number is: \(newNumber)")
            phoneNumber.text = newNumber
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

