//
//  ViewController.swift
//  Calculator
//
//  Created by Jake Deakin on 4/3/21.
//

import UIKit

class ViewController: UIViewController {
    
    var previousNumber: Double = 0
    var currentNumber: Double = 0
    var currentOperation: Int = 0
    var isMathButtonsClicked: Bool = false
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "";
    }

    @IBAction func numbers(_ sender: UIButton)
    {
        if(isMathButtonsClicked)
        {
            if(sender.tag == 17)
            {
                label.text = "."
            }
            else
            {
                label.text = String(sender.tag-1)
            }
            isMathButtonsClicked = false
        }
        else
        {
            if(sender.tag == 17)
            {
                label.text = label.text! + "."
            }
            else
            {
                label.text = label.text! + String(sender.tag-1)
            }
        }
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if(label.text != "")
        {
            previousNumber = Double(label.text!)!
            if sender.tag == 12
            {
                label.text = "÷";
            }
            else if sender.tag == 13
            {
                label.text = "×";
            }
            else if sender.tag == 14
            {
                label.text = "−";
            }
            else if sender.tag == 15
            {
                label.text = "+";
            }
            else if sender.tag == 11
            {
                label.text = ""
            }
        }
        currentOperation = sender.tag
        isMathButtonsClicked = true
    }
    
    
    @IBAction func CalculateMath(_ sender: UIButton)
    {
        if(label.text != "")
        {
            currentNumber = Double(label.text!)!
            if(currentOperation == 12)
            {
                label.text = String(previousNumber / currentNumber)
            }
            else if(currentOperation == 13)
            {
                label.text = String(previousNumber * currentNumber)
            }
            else if(currentOperation == 14)
            {
                label.text = String(previousNumber - currentNumber)
            }
            else if(currentOperation == 15)
            {
                label.text = String(previousNumber + currentNumber)
            }
        }
    }
    
    
}

