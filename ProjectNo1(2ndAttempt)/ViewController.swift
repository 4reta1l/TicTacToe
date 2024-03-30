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
    }
    
    @IBAction func Button1Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image1.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image1.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button1.isEnabled = false
    
    }
    
    @IBAction func Button2Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image2.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image2.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button2.isEnabled = false
    }
    @IBAction func Button3Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image3.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image3.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button3.isEnabled = false
    }
    @IBAction func Button4Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image4.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image4.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button4.isEnabled = false
    }
    @IBAction func Button5Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image5.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image5.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button5.isEnabled = false
    }
    @IBAction func Button6Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image6.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image6.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button6.isEnabled = false
    }
    @IBAction func Button7Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image7.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image7.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button7.isEnabled = false
    }
    @IBAction func Button8Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image8.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image8.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button8.isEnabled = false
        
    }
    @IBAction func Button9Clicked(_ sender: Any) {
        if label.text == "Circle" {
            Image9.image = UIImage(named: "circle")
            label.text = "Cross"
            arrayForCircles[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        } else {
            Image9.image = UIImage(named: "cross")
            label.text = "Circle"
            arrayForCrosses[(sender as AnyObject).tag - 1] = (sender as AnyObject).tag
        }
        for combination in winCombinations {
            for number in combination {
                if arrayForCircles.contains(number) {
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
        for combination in winCombinations {
            for number in combination {
                if arrayForCrosses.contains(number) {
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
        Button9.isEnabled = false
    }
    
}

