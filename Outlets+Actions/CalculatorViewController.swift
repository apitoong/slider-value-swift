//
//  CalculatorViewController.swift
//  Outlets+Actions
//
//  Created by Dickson Leonard on 10/03/20.
//  Copyright © 2020 Alvonse. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var priceValue: UITextField!
    @IBOutlet weak var sellPrice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    @IBAction func getlow(_ sender: Any) {
        let val=Double(priceValue.text ?? "10") ?? 12
        let dist  = val*1/4+val
        sellPrice.text = "labanya " + String (dist)
        print(dist)
    }
    
}
