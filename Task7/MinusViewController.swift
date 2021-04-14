//
//  MinusViewController.swift
//  Task7
//
//  Created by 野村大悟 on 2021/04/08.
//

import UIKit

class MinusViewController: UIViewController {

    @IBOutlet private var topTextfield: UITextField!
    @IBOutlet private var bottomTextfield: UITextField!
    @IBOutlet private var resultLabel: UILabel!
    private var calculation = 0

    @IBAction private func resultButton(_ sender: Any) {
        guard let topText = topTextfield.text,
              let bottomText = bottomTextfield.text,
              let topNum = Int(topText),
              let bottomNum = Int(bottomText) else { return }
        let calculation = topNum + bottomNum
        resultLabel.text = String(calculation)
        view.endEditing(true)
    }
}
