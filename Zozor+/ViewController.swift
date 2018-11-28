//
//  ViewController.swift
//  CountOnMe
//
//  Created by Ambroise COLLON on 30/08/2016.
//  Copyright © 2016 Ambroise Collon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
    @IBOutlet var numberButtons: [UIButton]!
    
    //Instance
    var calculate = Calculator()

    // MARK: - Action

    @IBAction func tappedNumberButton(_ sender: UIButton) {
        for (i, numberButton) in numberButtons.enumerated() {
            if sender == numberButton {
                calculate.addNewNumber(i)
                updateDisplay()
            }
        }
    }

    @IBAction func plus() {
        guard calculate.plus() else {
            let alertVC = UIAlertController(title: "Zéro!", message: "Expression incorrecte !", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alertVC, animated: true, completion: nil)
            return
        }
        updateDisplay()
    }

    @IBAction func minus() {
        guard calculate.minus() else {
            let alertVC = UIAlertController(title: "Zéro!", message: "Expression incorrecte !", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alertVC, animated: true, completion: nil)
            return
        }
        updateDisplay()
    }

    @IBAction func equal() {
        calculTotal()
        textView.text = textView.text + "=\(calculate.total)"
        calculate.clear()
        if calculate.stringNumbers.count == 1 {
            let alertVC = UIAlertController(title: "Zéro!", message: "Démarrez un nouveau calcul !", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            present(alertVC, animated: true, completion: nil)
        }

    }

    @IBAction func reset() {
        calculate.reset()
        textView.text = "0"
        calculate.clear()
    }
    
    func calculTotal(){
        if calculate.isExpressionCorrect{
            calculate.calculateTotal()
        } else {
            let alertVC = UIAlertController(title: "Zéro!", message: "Entrez une expression correcte !", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alertVC, animated: true, completion: nil)
        }
    }
    
    func updateDisplay() {
        var text = ""
        for (i, stringNumber) in calculate.stringNumbers.enumerated() {
            // Add operator
            if i > 0 {
                text += calculate.operators[i]
            }
            // Add number
            text += stringNumber
        }
        textView.text = text
    }
    
    // MARK: - Methods

}

