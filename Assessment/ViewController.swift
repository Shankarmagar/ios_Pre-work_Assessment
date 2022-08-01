//
//  ViewController.swift
//  Assessment
//
//  Created by Shankar Ale Magar on 7/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var sizeControl: UIStepper!
    @IBOutlet weak var partySize: UILabel!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var perPersonAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColor(_ sender: Any) {
        lightOn = !lightOn
                if lightOn {
                view.backgroundColor =  .white
                    
                }
                else  {
                    view.backgroundColor =  .systemBrown

    }
    }
    
    @IBAction func calculateTips(_ sender: Any) {
        let x = Double(tip1.text!) ?? 0
                let y = Double(tip2.text!) ?? 0
                let z = Double(tip3.text!) ?? 0
                let bill = Double(billAmount.text!) ?? 0
                let tipsPercentage = [x, y, z]
                let tip = (bill * tipsPercentage[tipControl.selectedSegmentIndex])/100
                let total = bill + tip
                tipAmount.text = String(format: "$%.2f", tip)
                totalAmount.text = String(format: "$%.2f", total)
                partySize.text = String(sizeControl.value)
                let Rate = Double(partySize.text!) ?? 0
                let perPerson = total/Rate
                perPersonAmount.text = String(format: "$%.2f", perPerson)

    }
                                              
    @IBAction func finalCalculation(_ sender: Any) {
        let x = Double(tip1.text!) ?? 0
                let y = Double(tip2.text!) ?? 0
                let z = Double(tip3.text!) ?? 0
                let bill = Double(billAmount.text!) ?? 0
                let tipsPercentage = [x, y, z]
                let tip = (bill * tipsPercentage[tipControl.selectedSegmentIndex])/100
                let total = bill + tip
                tipAmount.text = String(format: "$%.2f", tip)
                totalAmount.text = String(format: "$%.2f", total)
                partySize.text = String(sizeControl.value)
                let Rate = Double(partySize.text!) ?? 0
                let perPerson = total/Rate
                perPersonAmount.text = String(format: "$%.2f", perPerson)

    }
    
    @IBAction func changeTitle(_ sender: Any) {
        let t1 = String(tip1.text! + "%")
                tipControl.setTitle(t1, forSegmentAt: 0)
            }
    
    @IBAction func changeTitle1(_ sender: Any) {
        let t1 = String(tip2.text! + "%")
                tipControl.setTitle(t1, forSegmentAt: 1)
            }

    
    @IBAction func changeTitle2(_ sender: Any) {
        let t1 = String(tip3.text! + "%")
                tipControl.setTitle(t1, forSegmentAt: 3)
            }
    
}

