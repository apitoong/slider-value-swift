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
    @IBOutlet weak var costomValue: UISlider!
    var count = ""
    @IBOutlet weak var countView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    @IBAction func getlow(_ sender: Any) {
        costomValue.value=0.25
        let val=Double(priceValue.text ?? "10") ?? 10
        let dist  = val*1/4+val
        sellPrice.text = "labanya " + String (dist)
        print(dist)
    }
    
    @IBAction func getHight(_ sender: Any) {
        costomValue.value=1.0
        let val=Double(priceValue.text ?? "10") ?? 12
        let dist  = val*3/4+val
        sellPrice.text = "labanya " + String (dist)
        print(dist)
    }
    @IBAction func getMed(_ sender: Any) {
        costomValue.value=0.5
        let val=Double(priceValue.text ?? "10") ?? 10
        let dist  = val*2/4+val
        sellPrice.text = "labanya " + String (dist)
        print(dist)
    }
    @IBAction func getCostom(_ sender: Any) {
         
//        print(costomValue.value * 100)
        let val=Double(priceValue.text ?? "10") ?? 10
        count = String(Int(costomValue.value * 100) )
        countView.text = count + " %"
        let result = val + (val * (Double(count ) ?? 0.5))/100.0
        sellPrice.text = "labanya " + String(result )  
    }
}
