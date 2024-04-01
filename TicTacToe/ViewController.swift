//
//  ViewController.swift
//  ProjectNo1(2ndAttempt)
//
//  Created by Maksym Pyvovarov on 29/03/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image4: UIImageView!
    @IBOutlet var image5: UIImageView!
    @IBOutlet var image6: UIImageView!
    @IBOutlet var image7: UIImageView!
    @IBOutlet var image8: UIImageView!
    @IBOutlet var image9: UIImageView!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
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

        newGame(action: nil)
    }

    func newGame(action: UIAlertAction!) {
        arrayForCrosses = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        arrayForCircles = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        label.text = "Cross"
        image1.image = nil
        image2.image = nil
        image3.image = nil
        image4.image = nil
        image5.image = nil
        image6.image = nil
        image7.image = nil
        image8.image = nil
        image9.image = nil
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        button4.isEnabled = true
        button5.isEnabled = true
        button6.isEnabled = true
        button7.isEnabled = true
        button8.isEnabled = true
        button9.isEnabled = true
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
    
    @IBAction func button1Clicked(_ sender: Any) {
        changeImage(image1, number: 1)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button1.isEnabled = false
        checkIfDraw()
    
    }
    
    @IBAction func button2Clicked(_ sender: Any) {
        changeImage(image2, number: 2)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button2.isEnabled = false
        checkIfDraw()
    }
    @IBAction func button3Clicked(_ sender: Any) {
        changeImage(image3, number: 3)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button3.isEnabled = false
        checkIfDraw()
    }
    @IBAction func button4Clicked(_ sender: Any) {
        changeImage(image4, number: 4)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button4.isEnabled = false
        checkIfDraw()
    }
    @IBAction func button5Clicked(_ sender: Any) {
        changeImage(image5, number: 5)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button5.isEnabled = false
        checkIfDraw()
    }
    @IBAction func button6Clicked(_ sender: Any) {
        changeImage(image6, number: 6)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button6.isEnabled = false
        checkIfDraw()
    }
    @IBAction func button7Clicked(_ sender: Any) {
        changeImage(image7, number: 7)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button7.isEnabled = false
        checkIfDraw()
    }
    @IBAction func button8Clicked(_ sender: Any) {
        changeImage(image8, number: 8)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button8.isEnabled = false
        checkIfDraw()
        
    }
    @IBAction func button9Clicked(_ sender: Any) {
        changeImage(image9, number: 9)
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        button9.isEnabled = false
        checkIfDraw()
    }
    
}

