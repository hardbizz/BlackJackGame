//
//  ViewController.swift
//  BlackJackGame
//
//  Created by MacBook on 25.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var game = BlackJack()
        game.shuffle()
        game.start()
       // print(game.playerCards)
       // print(game.dillerCards)
        //game.countPlayerPoints()
       // game.countDillerPoints()
       // game.countPoints(game.playerCards)
        //game.countPoints(game.dillerCards)
        
        game.showCards(game.playerCards)
        game.showCards(game.dillerCards)
        
        game.countPlayerPoints()
        game.countDillerPoints()
        
        if game.playerPoints <= 17 {
            game.secondRingPlayerChoose(choose:"Give")
        
            game.secondRingDillerStep()}
        else  {
         game.secondRingPlayerChoose(choose:"Skip")
    
            game.secondRingDillerStep()}
        
        game.countPlayerPoints()
        game.countDillerPoints()
    
    
    
    
    }
}

