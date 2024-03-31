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
    @IBOutlet var board: UIImageView!
    
    var arrayForCrosses = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var arrayForCircles = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var winCombinations = [[1, 2, 3],
                           [1, 4, 7],
                           [2, 5, 8],
                           [3, 6, 9],
                           [4, 5, 6],
                           [7, 8, 9],
                           [1, 5, 9],
                           [3, 5, 7]]
    var checkIn = false
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Cross"
        newGame(action: nil)
    }

    func newGame(action: UIAlertAction!) {
        arrayForCrosses = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        arrayForCircles = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        label.text = "Cross"
        Image1.image = nil
        Image2.image = nil
        Image3.image = nil
        Image4.image = nil
        Image5.image = nil
        Image6.image = nil
        Image7.image = nil
        Image8.image = nil
        Image9.image = nil
        Button1.isEnabled = true
        Button2.isEnabled = true
        Button3.isEnabled = true
        Button4.isEnabled = true
        Button5.isEnabled = true
        Button6.isEnabled = true
        Button7.isEnabled = true
        Button8.isEnabled = true
        Button9.isEnabled = true
        count = 0
    }
    
    func changeImage(_ image: UIImageView, number: Int) {
        if label.text == "Circle" {
            image.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[number - 1] = number
        } else {
            image.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[number - 1] = number
        }
        count += 1
    }
    
    func checkIfWon(_ array: Array<Int>) {
        for combination in winCombinations {
            for number in combination {
                if array.contains(number) {
                    checkIn = true
                } else {
                    checkIn = false
                    break
                }
            }
            if checkIn == true {
                let ac = UIAlertController(title: "Game over", message: "\((label.text)!) lost", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Wanna play once more?", style: .default, handler: newGame))
                present(ac, animated: true)
            }
        }
    }
    
    func checkIfDraw() {
        if count == 9 && checkIn == false {
            let ac = UIAlertController(title: "Game over", message: "Draw", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Wanna play once more?", style: .default, handler: newGame))
            present(ac, animated: true)
        }
    }
    
    @IBAction func Button1Clicked(_ sender: Any) {
        changeImage(Image1, number: 1)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button1.isEnabled = false
        checkIfDraw()
    
    }
    
    @IBAction func Button2Clicked(_ sender: Any) {
        changeImage(Image2, number: 2)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button2.isEnabled = false
        checkIfDraw()
    }
    @IBAction func Button3Clicked(_ sender: Any) {
        changeImage(Image3, number: 3)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button3.isEnabled = false
        checkIfDraw()
    }
    @IBAction func Button4Clicked(_ sender: Any) {
        changeImage(Image4, number: 4)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button4.isEnabled = false
        checkIfDraw()
    }
    @IBAction func Button5Clicked(_ sender: Any) {
        changeImage(Image5, number: 5)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button5.isEnabled = false
        checkIfDraw()
    }
    @IBAction func Button6Clicked(_ sender: Any) {
        changeImage(Image6, number: 6)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button6.isEnabled = false
        checkIfDraw()
    }
    @IBAction func Button7Clicked(_ sender: Any) {
        changeImage(Image7, number: 7)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button7.isEnabled = false
        checkIfDraw()
    }
    @IBAction func Button8Clicked(_ sender: Any) {
        changeImage(Image8, number: 8)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button8.isEnabled = false
        checkIfDraw()
        
    }
    @IBAction func Button9Clicked(_ sender: Any) {
        changeImage(Image9, number: 9)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        Button9.isEnabled = false
        checkIfDraw()
    }
    
}

