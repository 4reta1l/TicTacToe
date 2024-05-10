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
        
        view.addSubview(label)
        view.addSubview(board)
        board.image = .boardForTTT
        board.translatesAutoresizingMaskIntoConstraints = false
        let aspectRatioContraint = NSLayoutConstraint(item: board, attribute: .width, relatedBy: .equal, toItem: board, attribute: .height, multiplier: 1, constant: 0)
        aspectRatioContraint.isActive = true
        label.text = "Cross"
        label.frame = CGRect(x: 225, y: 68, width: 60, height: 20)
        label.textColor = .white
        
        newGame()
        setBackground()
        setButton10()
        setButton20()
        setButton30()
        setButton40()
        setButton50()
        setButton60()
        setButton70()
        setButton80()
        setButton90()
        
        configureStackView(stackView: stackView1)
        addButtonToStackView(stackView: stackView1, button1: button10, button2: button20, button3: button30)
        
        configureStackView(stackView: stackView2)
        addButtonToStackView(stackView: stackView2, button1: button40, button2: button50, button3: button60)
        
        configureStackView(stackView: stackView3)
        addButtonToStackView(stackView: stackView3, button1: button70, button2: button80, button3: button90)
        
        view.addSubview(stackView4)
        stackView4.axis = .vertical
        stackView4.distribution = .fillEqually
        stackView4.spacing = 20
        stackView4.addArrangedSubview(stackView1)
        stackView4.addArrangedSubview(stackView2)
        stackView4.addArrangedSubview(stackView3)
        setStackView4Contrains()
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
        board.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),
        ])
    }
    
    func setButton10() {
        view.addSubview(button10)
        button10.addTarget(self, action: #selector(button10Tapped), for: .touchUpInside)
    }
    
    func setButton20() {
        view.addSubview(button20)
        button20.addTarget(self, action: #selector(button20Tapped), for: .touchUpInside)
    }
    
    func setButton30() {
        view.addSubview(button30)
        button30.addTarget(self, action: #selector(button30Tapped), for: .touchUpInside)
    }
    
    func setButton40() {
        view.addSubview(button40)
        button40.addTarget(self, action: #selector(button40Tapped), for: .touchUpInside)
    }
    
    func setButton50() {
        view.addSubview(button50)
        button50.addTarget(self, action: #selector(button50Tapped), for: .touchUpInside)
    }
    
    func setButton60() {
        view.addSubview(button60)
        button60.addTarget(self, action: #selector(button60Tapped), for: .touchUpInside)
    }
    
    func setButton70() {
        view.addSubview(button70)
        button70.addTarget(self, action: #selector(button70Tapped), for: .touchUpInside)
    }
    
    func setButton80() {
        view.addSubview(button80)
        button80.addTarget(self, action: #selector(button80Tapped), for: .touchUpInside)
    }
    
    func setButton90() {
        view.addSubview(button90)
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
        countOfCircles = 0
        countOfCrosses = 0
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
            firstCircle = secondCircle
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
            firstCross = secondCross
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
