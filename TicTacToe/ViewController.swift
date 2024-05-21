//
//  ViewController.swift
//  ProjectNo1(2ndAttempt)
//
//  Created by Maksym Pyvovarov on 29/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
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
    var countOfCrosses = 0
    var countOfCircles = 0
    var firstCross: UIButton?
    var secondCross: UIButton?
    var thirdCross: UIButton?
    var firstCircle: UIButton?
    var secondCircle: UIButton?
    var thirdCircle: UIButton?
    var number1Cross: Int?
    var number2Cross: Int?
    var number3Cross: Int?
    var number1Circle: Int?
    var number2Circle: Int?
    var number3Circle: Int?
    let stackView1 = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
    let stackView4 = UIStackView()
    let label = UILabel()
    let board = UIImageView()
    var buttonsArray = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButtons()
        view.addSubview(label)
        view.addSubview(board)
        board.image = .boardForTTT
        board.translatesAutoresizingMaskIntoConstraints = false
        let aspectRatioContraint = NSLayoutConstraint(item: board, attribute: .width, relatedBy: .equal, toItem: board, attribute: .height, multiplier: 1, constant: 0)
        aspectRatioContraint.isActive = true
        label.text = "Cross"
        label.frame = CGRect(x: 225, y: 68, width: 60, height: 20)
        label.textColor = .white
        setBackground()

        configureStackView(stackView: stackView1)
        addButtonToStackView(stackView: stackView1, button1: buttonsArray[0], button2: buttonsArray[1], button3: buttonsArray[2])
        
        configureStackView(stackView: stackView2)
        addButtonToStackView(stackView: stackView2, button1: buttonsArray[3], button2: buttonsArray[4], button3: buttonsArray[5])
        
        configureStackView(stackView: stackView3)
        addButtonToStackView(stackView: stackView3, button1: buttonsArray[6], button2: buttonsArray[7], button3: buttonsArray[8])
        
        view.addSubview(stackView4)
        stackView4.axis = .vertical
        stackView4.distribution = .fillEqually
        stackView4.spacing = 20
        stackView4.addArrangedSubview(stackView1)
        stackView4.addArrangedSubview(stackView2)
        stackView4.addArrangedSubview(stackView3)
        setStackView4Contrains()
        newGame()
    }
    
    func createButtons() {
        for i in 0..<9 {
            let button = UIButton()
            button.tag = i
            buttonsArray.append(button)
            view.addSubview(buttonsArray[i])
            buttonsArray[i].addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        }
    }
    
    func configureStackView(stackView: UIStackView) {
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20
    }
    
    func addButtonToStackView(stackView: UIStackView, button1: UIButton, button2: UIButton, button3: UIButton) {
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
    }
    
    func setStackView4Contrains() {
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        stackView4.topAnchor.constraint(equalTo: board.topAnchor, constant: 20).isActive = true
        stackView4.leadingAnchor.constraint(equalTo: board.leadingAnchor, constant: 60).isActive = true
        stackView4.trailingAnchor.constraint(equalTo: board.trailingAnchor, constant: -60).isActive = true
        stackView4.bottomAnchor.constraint(equalTo: board.bottomAnchor, constant: -20).isActive = true
    }
    
    func setBackground() {
        NSLayoutConstraint.activate([
        board.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        board.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        board.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
        ])
    }
    
    func newGame() {
        arrayForCrosses = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        arrayForCircles = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        label.text = "Cross"
        for i in 0..<buttonsArray.count {
            buttonsArray[i].setImage(.none, for: .normal)
            buttonsArray[i].isEnabled = true
        }
        count = 0
        countOfCircles = 0
        countOfCrosses = 0
        firstCross?.backgroundColor = .white
        firstCircle?.backgroundColor = .white
    }
    
    func changeImage(_ button: UIButton, number: Int) {
        if label.text == "Circle" {
            if countOfCircles >= 3 {
                arrayForCircles[number1Circle! - 1] = 0
                firstCircle!.isEnabled = true
                firstCircle!.setImage(.none, for: .normal)
            }
            number1Circle = number2Circle
            number2Circle = number3Circle
            number3Circle = number
            firstCircle?.backgroundColor = .white
            firstCircle = secondCircle
            if let x = firstCircle {
                x.backgroundColor = .systemGreen
            }
            secondCircle = thirdCircle
            thirdCircle = button
            button.setImage(.circle, for: .normal)
            label.text = "Cross"
            arrayForCircles[number - 1] = number
            countOfCircles += 1
        } else {
            if countOfCrosses >= 3 {
                arrayForCrosses[number1Cross! - 1] = 0
                firstCross!.isEnabled = true
                firstCross!.setImage(.none, for: .normal)
            }
            number1Cross = number2Cross
            number2Cross = number3Cross
            number3Cross = number
            firstCross?.backgroundColor = .white
            firstCross = secondCross
            if let x = firstCross {
                x.backgroundColor = .systemPink
            }
            secondCross = thirdCross
            thirdCross = button
            button.setImage(.cross, for: .normal)
            label.text = "Circle"
            arrayForCrosses[number - 1] = number
            countOfCrosses += 1
        }
//        count += 1
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
    
//    func checkIfDraw() {
//        if count == 9 {
//            let ac = UIAlertController(title: "Game over", message: "Draw", preferredStyle: .alert)
//            let playAgainAction = UIAlertAction(title: "Wanna play once more?", style: .default) { _ in self.newGame()}
//            ac.addAction(playAgainAction)
//            present(ac, animated: true)
//        }
//    }
    
    func checkGameOver() {
        checkIfWon(arrayForCircles)
        checkIfWon(arrayForCrosses)
//        checkIfDraw()
    }
    
    @objc func buttonTapped(sender: UIButton!) {
        changeImage(buttonsArray[sender.tag], number: sender.tag + 1)
        checkGameOver()
        buttonsArray[sender.tag].isEnabled = false
    }
}
