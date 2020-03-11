//
//  FormViewController.swift
//  Outlets+Actions
//
//  Created by Dickson Leonard on 10/03/20.
//  Copyright © 2020 Alvonse. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    @IBOutlet weak var formLabelColor: UILabel!
    @IBOutlet weak var firstLabelColor: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var newResult: UILabel!
    var temp = true
    @IBOutlet weak var lastValue: UITextField!
    @IBOutlet weak var nameValue: UITextField!
    @IBOutlet weak var ageValue: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func changeColor(val:UIColor){
       
        formLabelColor.backgroundColor=val
        firstLabelColor.backgroundColor=UIColor(red:0.32, green:0.17, blue:0.35, alpha:1.0)
    }
    func changeName(){
        let name=nameValue.text ?? "undefined"
        let last = lastValue.text ?? "undefined"
        let age = ageValue.text ?? "undefined"
        resultLabel.text = "My Name is " + name + " " + last + " may Age " + age + " years old"
        var nextAge = Int( age   )
        nextAge = (nextAge ?? 10) + 1
 
        newResult.text = " next year " + String(nextAge ?? 10) + " years old "
        temp = !temp
 
    }
    @IBAction func onSubmit(_ sender: Any) {
 
        changeColor(val:UIColor.blue)
        changeName()
 
     
    }
}
