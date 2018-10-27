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
        
       // var game = BlackJack()
       // game.shuffle()
       // game.start()
       // print(game.response)
        
        var sumA = 100 //Игрок
        var sumB = 100
        
        while sumA > 0 && sumB > 0 {
            var game = BlackJack()
            game.start()
            var i = 0
            if game.response == "Игрок победил" {
                sumA+=10
                sumB-=10
                i+=1
            }
            if game.response == "Диллер победил" {
                sumB+=10
                sumA-=10
                i+=1
                
            }
            
        }
        print(sumA, sumB)
        
        
       // print(game.playerCards)
       // print(game.dillerCards)
        //game.countPlayerPoints()
       // game.countDillerPoints()
       // game.countPoints(game.playerCards)
        //game.countPoints(game.dillerCards)
        
       // game.showCards(game.playerCards)
       // game.showCards(game.dillerCards)
        
        //game.countPlayerPoints()
       // game.countDillerPoints()
        //game.checkState()
        
//        if game.playerPoints != 21 && game.dillerPoints != 21 {
//        if game.playerPoints <= 17 {
//            game.secondRingAction(choose:"Give")
//        } else  {
//            game.secondRingAction(choose:"Skip")}
//    
        
        //game.countPlayerPoints()
        //game.countDillerPoints()
        
//        game.countPlayerPointsFinal()
//        game.countDillerPointsFinal()
//        game.checkWinner()
        }
    
    
    
    
    }


