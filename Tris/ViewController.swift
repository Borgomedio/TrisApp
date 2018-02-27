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
    
    @IBAction func clickOnButton(_ sender: AnyObject)
    {
        if(gameState[sender.tag-1] == 0)
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
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

