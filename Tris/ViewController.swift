//
//  ViewController.swift
//  Tris
//
//  Created by Andrea on 27/02/18.
//  Copyright © 2018 Andrea Borgotti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var b: UIButton!
    var player = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    let winningCombination = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    var gameIsActive = true
    
    @IBAction func clickOnButton(_ sender: AnyObject)
    {
        if(gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            if(player == 1){
                sender.setImage(UIImage(named: "cervello.png"), for: UIControlState())
                player = 2
                gameState[sender.tag-1] = 1
            }else{
                sender.setImage(UIImage(named: "cuore.png"), for: UIControlState())
                player = 1
                gameState[sender.tag-1] = 2
            }
        }
        
        for combination in winningCombination
        {
            if(gameState[combination[0]] != 0 && gameState[combination[0]]==gameState[combination[1]] && gameState[combination[1]]==gameState[combination[2]]){
                gameIsActive = false
                if (gameState[combination[0]]==1)
                {
                    //cervello win
                    print("CERVELLO win!")
                }else
                {
                    //cuore win
                    print("CUORE win!")
                }
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

