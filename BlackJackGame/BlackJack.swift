//
//  BlackJack.swift
//  BlackJackGame
//
//  Created by MacBook on 25.10.2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class BlackJack: NSObject {
    //SUITS = [♠️ ♣️ ♥️ ♦️]
   // RANKS = [2 3 4 5 6 7 8 9 10 J Q K A]
    var deskOfCards = [ ["2♠️": 2], ["2♣️" :2], ["2♥️" :2], ["2♦️" :2],
                         ["3♠️": 3], ["3♣️" :3], ["3♥️" :3], ["3♦️" :3],
                         ["4♠️": 4], ["4♣️" :4], ["4♥️" :4], ["4♦️" :4],
                         ["5♠️": 5], ["5♣️" :5], ["5♥️" :5], ["5♦️" :5],
                         ["6♠️": 6], ["6♣️" :6], ["6♥️" :6], ["6♦️" :6],
                         ["7♠️": 7], ["7♣️" :7], ["7♥️" :7], ["7♦️" :7],
                         ["8♠️": 8], ["8♣️" :8], ["8♥️" :8], ["8♦️" :8],
                         ["9♠️": 9], ["9♣️" :9], ["9♥️" :9], ["9♦️" :9],
                         ["10♠️": 10], ["10♣️" :10], ["10♥️" :10], ["10♦️" :10],
                         ["J♠️": 10], ["J♣️" :10], ["J♥️" :10], ["J♦️" :10],
                         ["Q♠️": 10], ["Q♣️" :10], ["Q♥️" :10], ["Q♦️" :10],
                         ["K♠️": 10], ["K♣️" :10], ["K♥️" :10], ["K♦️" :10],
                         ["A♠️": 11], ["A♣️" :11], ["A♥️" :11], ["A♦️" :11]
    ]
    
    
    func shuffle() {
        for i in 0..<52 {
            let random = Int(arc4random()%52)
            var temp: [String : Int]
            temp = deskOfCards[i]
            deskOfCards[i] = deskOfCards[random]
            deskOfCards[random] = temp
        }
    }
    
//    private func giveCard(_ target: Array<[String:Int]>) -> Array<[String:Int]> {
//        var t = target
//        t.append(deskOfCards.removeFirst())
//        return t
//    }

    var playerCards: Array<[String:Int]> = [["0": 0]]
    var dillerCards: Array<[String:Int]> = [["0": 0]]
    var playerPoints = 0
    var dillerPoints = 0
    
    func start() {
        playerCards.removeAll()
        dillerCards.removeAll()
        playerCards.append(deskOfCards.removeFirst())
        playerCards.append(deskOfCards.removeFirst())
        dillerCards.append(deskOfCards.removeFirst())
        dillerCards.append(deskOfCards.removeFirst())
    }
    func countPlayerPoints() ->Int {
        playerPoints = 0
        
        for i in 0..<playerCards.count {
            for (_, value) in playerCards[i] {
                playerPoints+=value
            }
        }
        if playerPoints == 22 {playerPoints = 12}
        print("Сумма очков игрока: \(playerPoints)")
        return(playerPoints)
    }
    func countDillerPoints() -> Int{
        dillerPoints = 0
        for i in 0..<dillerCards.count {
            for (_, value) in dillerCards[i] {
                
                dillerPoints+=value
            }
        }
        if dillerPoints == 22 {dillerPoints = 12}
        
        print("Сумма очков диллера: \(dillerPoints)")
        return (dillerPoints)
    }

    func countPoints(_ target: Array <[String:Int]>) -> Int{
        var res = 0
            for i in 0..<target.count {
                for (_, value) in target[i] {
                    res+=value
                }
            }
            print("Сумма очков : \(res)")
        return res
        }
    
    
    
    func showCards(_ owner: Array<[String:Int]>) {
        var cards = ""
        for i in 0..<owner.count {
        for (key, _) in owner[i] {
        cards+=key
            
            }
    }
        print(cards)
    }
    func checkState() {
        if countPlayerPoints() == 21 || countDillerPoints() > 21 {
            print("Игрок победил")
        }
        if countDillerPoints() == 21 || countPlayerPoints() > 21 {
            print("Диллер победил")
        }
        
        
    }
    func secondRingPlayerChoose(choose: String) {
        if choose == "Skip"{
           print("Игрок пропускает ход")
            
        }
        if choose == "Give" {
            playerCards.append(deskOfCards.removeFirst())
            print("Игроку добавлена карта" )
            //countPlayerPoints()
            showCards(playerCards)
           // countPlayerPoints()
        }
        if choose == "Opencards" {
           checkState()
        }
        
        
        
    }
    func secondRingDillerStep() {
        if dillerPoints <= 17 {
            dillerCards.append(deskOfCards.removeFirst())
            print("Диллеру добавлена карта")
            showCards(dillerCards)
           // countDillerPoints()
        }
    }
    
    

}
