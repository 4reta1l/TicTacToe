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
    
    enum picture {
        case circle
        case cross
    }
    
    
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
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        newGame()
        
    }

    func newGame() {
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
    
    func assets(for picture: picture) -> UIImage? {
        switch picture {
        case .circle:
            return UIImage(named: "circle")
        case .cross:
            return UIImage(named: "cross")
        }
    }
    
    func changeImage(_ image: UIImageView, number: Int) {
        if label.text == "Circle" {
            image.image = assets(for: .circle)
            
            label.text = "Cross"
            arrayForCircles[number - 1] = number
        } else {
            image.image = assets(for: .cross)
            label.text = "Circle"
            arrayForCrosses[number - 1] = number
        }
        count += 1
    }
    
    func checkIfWon(_ array: Array<Int>) {
        for combination in winCombinations {
            if combination.allSatisfy({ array.contains($0) }) {
                let ac = UIAlertController(title: "Game over", message: "\((label.text)!) lost", preferredStyle: .alert)
                let playAgainAction = UIAlertAction(title: "Wanna play once more?", style: .default) { _ in self.newGame()}
                ac.addAction(playAgainAction)
                present(ac, animated: true)
            }
        }
    }
    
    func checkIfDraw() {
        if count == 9 {
            let ac = UIAlertController(title: "Game over", message: "Draw", preferredStyle: .alert)
            let playAgainAction = UIAlertAction(title: "Wanna play once more?", style: .default) { _ in self.newGame()}
            ac.addAction(playAgainAction)
            present(ac, animated: true)
        }
    }
    
    func checkGameOver() {
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
        checkIfDraw()
    }
    
    @IBAction func button1Clicked(_ sender: Any) {
        changeImage(image1, number: 1)
        checkGameOver()
        button1.isEnabled = false
    
    }
    
    @IBAction func button2Clicked(_ sender: Any) {
        changeImage(image2, number: 2)
        checkGameOver()
        button2.isEnabled = false
    }
    @IBAction func button3Clicked(_ sender: Any) {
        changeImage(image3, number: 3)
        checkGameOver()
        button3.isEnabled = false
    }
    @IBAction func button4Clicked(_ sender: Any) {
        changeImage(image4, number: 4)
        checkGameOver()
        button4.isEnabled = false
    }
    @IBAction func button5Clicked(_ sender: Any) {
        changeImage(image5, number: 5)
        checkGameOver()
        button5.isEnabled = false
    }
    @IBAction func button6Clicked(_ sender: Any) {
        changeImage(image6, number: 6)
        checkGameOver()
        button6.isEnabled = false
    }
    @IBAction func button7Clicked(_ sender: Any) {
        changeImage(image7, number: 7)
        checkGameOver()
        button7.isEnabled = false
    }
    @IBAction func button8Clicked(_ sender: Any) {
        changeImage(image8, number: 8)
        checkGameOver()
        button8.isEnabled = false
        
    }
    @IBAction func button9Clicked(_ sender: Any) {
        changeImage(image9, number: 9)
        checkGameOver()
        button9.isEnabled = false
    }
    
}

