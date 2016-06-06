//
//  ViewController.swift
//  tapper
//
//  Created by Jack Hider on 09/03/2016.
//  Copyright (c) 2016 Jack Hider. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var tapperimg: UIImageView!
    
    @IBOutlet weak var coinButton: UIButton!

    @IBOutlet weak var nooftapslbl: UILabel!
    
    @IBOutlet weak var howmanttaps: UITextField!
    
    @IBOutlet weak var runbutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        howmanttaps.delegate = self
    }
    
    
    

    @IBAction func pressToPlay(sender: UIBarButtonItem) {
        if howmanttaps.text != nil && howmanttaps.text != ""{
            
            runbutton.hidden = true
            howmanttaps.hidden = true
            tapperimg.hidden = true
            
            coinButton.hidden = false
            nooftapslbl.hidden = false

        }
    }



    @IBAction func onCoinPress(sender: UIButton) {
        
        gameData.instance.taps++
        
        if gameData.instance.taps >= gameData.instance.maxTaps{
            
            resetGame()
            
        }else {
            
            nooftapslbl.text = "\(gameData.instance.taps) Taps"
            
        }
    }
    
    
    func resetGame() {
        
        runbutton.hidden = false
        howmanttaps.hidden = false
        tapperimg.hidden = false
        
        howmanttaps.text = ""
        gameData.instance.maxTaps = 0
        coinButton.hidden = true
        nooftapslbl.hidden = true
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        if let taps = Int(howmanttaps.text!) {
            
            gameData.instance.maxTaps = taps
            
        }
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }

}

