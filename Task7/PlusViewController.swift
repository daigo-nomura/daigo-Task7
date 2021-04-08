//
//  PlusViewController.swift
//  Task7
//
//  Created by 野村大悟 on 2021/04/08.
//

import UIKit

class PlusViewController: UIViewController {

    @IBOutlet private var topTextfield: UITextField!
    @IBOutlet private var bottomTextfield: UITextField!
    @IBOutlet private var resultLabel: UILabel!
    private var calculation: Int = 0

    @IBAction private func resultButton(_ sender: Any) {
        guard let topText = topTextfield.text else { return }
        guard let bottomText = bottomTextfield.text else { return }
        guard let topNum = Int(topText) else { return }
        guard let bottomNum = Int(bottomText) else { return }
        calculation = topNum + bottomNum
        resultLabel.text = String(calculation)
        self.view.endEditing(true)
    }
}
