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
    @IBOutlet private weak var firstSignedLabel: UILabel!
    @IBOutlet private weak var secondSignedLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calcButton(_ sender: Any) {
        let firstValue = firstTextField.textToDouble ?? 0
        let secondValue = secondTextField.textToDouble ?? 0

        let firstSignedValue = firstSwitch.isOn ? -firstValue : firstValue
        let secondSignedValue = secondSwitch.isOn ? -secondValue : secondValue

        firstSignedLabel.text = String(firstSignedValue)
        secondSignedLabel.text = String(secondSignedValue)
        resultLabel.text = String(firstSignedValue + secondSignedValue)
    }
}
extension UITextField {
    var textToDouble: Double? {
        let text = self.text
        let double = text.flatMap { Double($0) }
        return double
    }
}
