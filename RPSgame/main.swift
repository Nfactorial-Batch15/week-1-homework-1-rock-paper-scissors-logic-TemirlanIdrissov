//
//  main.swift
//  RPSgame
//
//  Created by Temirlan Idrissov on 01.12.2021.
//

import Foundation


struct Game {
    enum Choice: String {
        case rock
        case paper
        case scissors
    }
    
    static func computerChoice() -> Choice {
        let randomChoice = Int.random(in: 1...3)
        if randomChoice == 1 {
            return Choice.rock
        } else if randomChoice == 2{
            return Choice.paper
        } else {
            return Choice.scissors
        }
    }
    
    static func myChoice() -> Choice {
        let myChoice: String? = readLine()
        if myChoice == "1" {
            return Choice.rock
        }else if myChoice == "2"{
            return Choice.paper
        }else{
            return Choice.scissors
        }
    }
    
    static func result(my myMove: Choice,comp player: Choice) {
        if myMove == player {
            print("It's draw")
        }else if myMove == Choice.rock && player == Choice.scissors || myMove == Choice.paper && player == Choice.rock || myMove == Choice.scissors && player == Choice.paper {
            print("You are winner")
        }else {
            print("You are loser. Try next time")
        }
    }
    
}



print("Please select your hero ? Rock - 1, Paper - 2, Scissors - 3:")
let player1 = Game.computerChoice()
let myMove = Game.myChoice()
print("Computer choice is \(player1) and Your choice is \(myMove)")
Game.result(my: myMove, comp: player1)

































