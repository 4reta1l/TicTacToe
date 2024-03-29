//
//  ViewController.swift
//  ProjectNo1(2ndAttempt)
//
//  Created by Maksym Pyvovarov on 29/03/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var Image1: UIImageView!
    @IBOutlet var Image2: UIImageView!
    @IBOutlet var Image3: UIImageView!
    @IBOutlet var Image4: UIImageView!
    @IBOutlet var Image5: UIImageView!
    @IBOutlet var Image6: UIImageView!
    @IBOutlet var Image7: UIImageView!
    @IBOutlet var Image8: UIImageView!
    @IBOutlet var Image9: UIImageView!
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var Button5: UIButton!
    @IBOutlet var Button6: UIButton!
    @IBOutlet var Button7: UIButton!
    @IBOutlet var Button8: UIButton!
    @IBOutlet var Button9: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Cross"
    }

    @IBAction func Button1Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image1.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image1.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button1.isEnabled = false
    }
    
    @IBAction func Button2Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image2.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image2.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button2.isEnabled = false
    }
    @IBAction func Button3Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image3.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image3.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button3.isEnabled = false
    }
    @IBAction func Button4Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image4.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image4.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button4.isEnabled = false
    }
    @IBAction func Button5Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image5.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image5.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button5.isEnabled = false
    }
    @IBAction func Button6Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image6.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image6.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button6.isEnabled = false
    }
    @IBAction func Button7Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image7.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image7.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button7.isEnabled = false
    }
    @IBAction func Button8Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image8.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image8.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button8.isEnabled = false
    }
    @IBAction func Button9Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image9.image = UIImage(named: "circle")
            label.text = "Cross"
        } else {
            Image9.image = UIImage(named: "cross")
            label.text = "Circle"
        }
        Button9.isEnabled = false
    }
}

