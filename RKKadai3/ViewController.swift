//
//  ViewController.swift
//  RKKadai3
//
//  Created by kasai riku on 2022/05/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var firstSwitch: UISwitch!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstTextLabel: UILabel!
    @IBOutlet private weak var secondTextLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBAction private func calcButton(_ sender: Any) {
        var firstValue = firstTextField.textToDouble ?? 0
        var secondValue = secondTextField.textToDouble ?? 0
        if firstSwitch.isOn == false && secondSwitch.isOn == false {
            firstTextLabel.text = String(firstValue)
            secondTextLabel.text = String(secondValue)
            resultLabel.text = String(firstValue + secondValue)
        } else if firstSwitch.isOn == true && secondSwitch.isOn == false {
            firstValue *= -1
            firstTextLabel.text = String(firstValue)
            secondTextLabel.text = String(secondValue)
            resultLabel.text = String(firstValue + secondValue)
        } else if firstSwitch.isOn == false && secondSwitch.isOn == true {
            secondValue *= -1
            firstTextLabel.text = String(firstValue)
            secondTextLabel.text = String(secondValue)
            resultLabel.text = String(firstValue + secondValue)
        } else {
            firstValue *= -1
            secondValue *= -1
            firstTextLabel.text = String(firstValue)
            secondTextLabel.text = String(secondValue)
            resultLabel.text = String(firstValue + secondValue)
        }
    }
}
extension UITextField {
    var textToDouble: Double? {
        let text = self.text
        let double = text.flatMap { Double($0) }
        return double
    }
}
