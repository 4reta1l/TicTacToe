//
//  ViewController.swift
//  ProjectNo1(2ndAttempt)
//
//  Created by Maksym Pyvovarov on 29/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
   
    
    
    
    var checkIfTapped = false
    
    
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
    let board = UIImageView()
    let button10 = UIButton()
    let button20 = UIButton()
    let button30 = UIButton()
    let button40 = UIButton()
    let button50 = UIButton()
    let button60 = UIButton()
    let button70 = UIButton()
    let button80 = UIButton()
    let button90 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        board.image = .boardForTTT
        board.frame = CGRect(x: 0, y: 200, width: 400, height: 350)
        
        view.addSubview(board)
        // Do any additional setup after loading the view.
        newGame()
        
        
        
        view.addSubview(button10)
        button10.frame = CGRect(x: 60, y: 225, width: 80, height: 80)
        button10.addTarget(self, action: #selector(button10Tapped), for: .touchUpInside)
        
        
        view.addSubview(button20)
        button20.frame = CGRect(x: 160, y: 225, width: 80, height: 80)
        button20.addTarget(self, action: #selector(button20Tapped), for: .touchUpInside)
        
        view.addSubview(button30)
        button30.frame = CGRect(x: 260, y: 225, width: 80, height: 80)
        button30.addTarget(self, action: #selector(button30Tapped), for: .touchUpInside)
        
        view.addSubview(button40)
        button40.frame = CGRect(x: 60, y: 335, width: 80, height: 80)
        button40.addTarget(self, action: #selector(button40Tapped), for: .touchUpInside)
        

        view.addSubview(button50)
        button50.frame = CGRect(x: 160, y: 335, width: 80, height: 80)
        button50.addTarget(self, action: #selector(button50Tapped), for: .touchUpInside)
        
    
        view.addSubview(button60)
        button60.frame = CGRect(x: 260, y: 335, width: 80, height: 80)
        button60.addTarget(self, action: #selector(button60Tapped), for: .touchUpInside)
        
        view.addSubview(button70)
        button70.frame = CGRect(x: 60, y: 445, width: 80, height: 80)
        button70.addTarget(self, action: #selector(button70Tapped), for: .touchUpInside)
        
        
        view.addSubview(button80)
        button80.frame = CGRect(x: 160, y: 445, width: 80, height: 80)
        button80.addTarget(self, action: #selector(button80Tapped), for: .touchUpInside)
        
    
        view.addSubview(button90)
        button90.frame = CGRect(x: 260, y: 445, width: 80, height: 80)
        button90.addTarget(self, action: #selector(button90Tapped), for: .touchUpInside)
    }
    
    func newGame() {
        arrayForCrosses = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        arrayForCircles = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        label.text = "Cross"
        button10.setImage(.none, for: .normal)
        button20.setImage(.none, for: .normal)
        button30.setImage(.none, for: .normal)
        button40.setImage(.none, for: .normal)
        button50.setImage(.none, for: .normal)
        button60.setImage(.none, for: .normal)
        button70.setImage(.none, for: .normal)
        button80.setImage(.none, for: .normal)
        button90.setImage(.none, for: .normal)
        
        button10.isEnabled = true
        button20.isEnabled = true
        button30.isEnabled = true
        button40.isEnabled = true
        button50.isEnabled = true
        button60.isEnabled = true
        button70.isEnabled = true
        button80.isEnabled = true
        button90.isEnabled = true
        
        count = 0
    }
    
    
    func changeImage(_ button: UIButton, number: Int) {
        if label.text == "Circle" {
            button.setImage(.circle, for: .normal)
            label.text = "Cross"
            arrayForCircles[number - 1] = number
        } else {
            button.setImage(.cross, for: .normal)
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
    
    @objc func button10Tapped(sender: UIButton!) {
        
        changeImage(button10, number: 1)
        
        checkGameOver()
        button10.isEnabled = false
    }
    @objc func button20Tapped(sender: UIButton!) {
        changeImage(button20, number: 2)
        checkGameOver()
        button20.isEnabled = false
    }
    
    @objc func button30Tapped(sender: UIButton!) {
        changeImage(button30, number: 3)
        checkGameOver()
        button30.isEnabled = false
    }
    
    @objc func button40Tapped(sender: UIButton!) {
        changeImage(button40, number: 4)
        checkGameOver()
        button40.isEnabled = false
    }
    
    @objc func button50Tapped(sender: UIButton!) {
        changeImage(button50, number: 5)
        checkGameOver()
        button50.isEnabled = false
    }
    
    @objc func button60Tapped(sender: UIButton!) {
        changeImage(button60, number: 6)
        checkGameOver()
        button60.isEnabled = false
    }
    
    @objc func button70Tapped(sender: UIButton!) {
        changeImage(button70, number: 7)
        checkGameOver()
        button70.isEnabled = false
    }
    
    @objc func button80Tapped(sender: UIButton!) {
        changeImage(button80, number: 8)
        checkGameOver()
        button80.isEnabled = false
    }
    
    @objc func button90Tapped(sender: UIButton!) {
        changeImage(button90, number: 9)
        checkGameOver()
        button90.isEnabled = false
    }
    
    
}
