//
//  ViewController.swift
//  HögreEllerLägre
//
//  Created by Matilda Dahlberg on 2018-01-19.
//  Copyright © 2018 Matilda Dahlberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomCardIndex: Int = 0
    var points: Int = 0
    var highScore: Int = 0
    let highscoreSaveKey = "highscore"
   
    
    let card1 = Card(name: "Klover2", value: 2)
    let card2 = Card(name: "Hjarter2", value: 2)
    let card3 = Card(name: "Spader2", value: 2)
    let card4 = Card(name: "Ruter2", value: 2)
    let card5 = Card(name: "Klover3", value: 3)
    let card6 = Card(name: "Hjarter3", value: 3)
    let card7 = Card(name: "Spader3", value: 3)
    let card8 = Card(name: "Ruter3", value: 3)
    let card9 = Card(name: "Klover4", value: 4)
    let card10 = Card(name: "Hjarter4", value: 4)
    let card11 = Card(name: "Spader4", value: 4)
    let card12 = Card(name: "Ruter4", value: 4)
    let card13 = Card(name: "Klover5", value: 5)
    let card14 = Card(name: "Hjarter5", value: 5)
    let card15 = Card(name: "Spader5", value: 5)
    let card16 = Card(name: "Ruter5", value: 5)
    let card17 = Card(name: "Klover6", value: 6)
    let card18 = Card(name: "Hjarter6", value: 6)
    let card19 = Card(name: "Spader6", value: 6)
    let card20 = Card(name: "Ruter6", value: 6)
    let card21 = Card(name: "Klover7", value: 7)
    let card22 = Card(name: "Hjarter7", value: 7)
    let card23 = Card(name: "Spader7", value: 7)
    let card24 = Card(name: "Ruter7", value: 7)
    let card25 = Card(name: "Klover8", value: 8)
    let card26 = Card(name: "Hjarter8", value: 8)
    let card27 = Card(name: "Spader8", value: 8)
    let card28 = Card(name: "Ruter8", value: 8)
    let card29 = Card(name: "Klover9", value: 9)
    let card30 = Card(name: "Hjarter9", value: 9)
    let card31 = Card(name: "Spader9", value: 9)
    let card32 = Card(name: "Ruter9", value: 9)
    let card33 = Card(name: "Klover10", value: 10)
    let card34 = Card(name: "Hjarter10", value: 10)
    let card35 = Card(name: "Spader10", value: 10)
    let card36 = Card(name: "Ruter10", value: 10)
    let card37 = Card(name: "KloverJ", value: 11)
    let card38 = Card(name: "HjarterJ", value: 11)
    let card39 = Card(name: "SpaderJ", value: 11)
    let card40 = Card(name: "RuterJ", value: 11)
    let card41 = Card(name: "KloverQ", value: 12)
    let card42 = Card(name: "HjarterQ", value: 12)
    let card43 = Card(name: "SpaderQ", value: 12)
    let card44 = Card(name: "RuterQ", value: 12)
    let card45 = Card(name: "KloverK", value: 13)
    let card46 = Card(name: "HjarterK", value: 13)
    let card47 = Card(name: "SpaderK", value: 13)
    let card48 = Card(name: "RuterK", value: 13)
    let card49 = Card(name: "KloverA", value: 14)
    let card50 = Card(name: "HjarterA", value: 14)
    let card51 = Card(name: "SpaderA", value: 14)
    let card52 = Card(name: "RuterA", value: 14)
   
    var cardArray = [Card]()

    
    @IBOutlet weak var imageCard: UIImageView!
    
    @IBOutlet weak var ScoreLabel: UILabel!
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var currentCard: Card?
    var nextCard: Card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        cardArray = [card1,card2,card3,card4,card5,card6,card7,card8,
               card9,card10,card11,card12,card13,card14,card15,card16,
               card17,card18,card19,card20,card21,card22,card23,card24,
               card25,card26,card27,card28,card29,card30,card31,card32,
               card33,card34,card35,card36,card37,card38,card39,card40,
               card41,card42,card43,card44,card45,card46,card47,card48,
               card49,card50,card51,card52]
        
        newImageCard(buttonPressedTag: 0)
        
        var highscoreDefault = UserDefaults.standard
        var savedHighScore = highscoreDefault.integer(forKey: highscoreSaveKey)
        if savedHighScore > 0{
            highScoreLabel.text = "\(savedHighScore)"
            highScore = savedHighScore
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func highButtonPressed(_ sender: UIButton) {
        newImageCard(buttonPressedTag: sender.tag)
        
       
       
    }
    
    @IBAction func lowButtonPressed(_ sender: UIButton) {
        newImageCard(buttonPressedTag: sender.tag)
        
    }
    
    
    
    func newImageCard(buttonPressedTag: Int){
        randomCardIndex = Int(arc4random_uniform(51))
        nextCard = cardArray[randomCardIndex]
        if buttonPressedTag != 0{
            if (nextCard?.value)! > (currentCard?.value)! && buttonPressedTag == 2{
                updatePoints()
            }
            else if (nextCard?.value)! > (currentCard?.value)! && buttonPressedTag == 1{
                startAgain()
            }
        
            if (nextCard?.value)! < (currentCard?.value)! && buttonPressedTag == 1{
                updatePoints()
            }
            else if (nextCard?.value)! < (currentCard?.value)! && buttonPressedTag == 2{
                startAgain()
            }
            
        }
        
        currentCard = nextCard
        imageCard.image = UIImage(named: (currentCard?.name)!)
        
    }
    //test
   
    func updatePoints(){
        points = points + 1
        ScoreLabel.text = "\(points)"
        
        if (points > highScore) {
            highScore = points
            highScoreLabel.text = "\(highScore)"
            
            highScoreSaved()
        }
        
    }
    
    func highScoreSaved(){
        var highscoreDefault = UserDefaults.standard
        highscoreDefault.set(highScore, forKey: highscoreSaveKey)
        highscoreDefault.synchronize()
    }
    
    func startAgain() {
        
        points = 0
        ScoreLabel.text = "\(points)"
        
    }
    
    
    
}

