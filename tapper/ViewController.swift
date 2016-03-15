//
//  ViewController.swift
//  tapper
//
//  Created by Jack Hider on 09/03/2016.
//  Copyright (c) 2016 Jack Hider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var taps = 0;
    var maxTaps = 0;
    
    @IBOutlet weak var tapperimg: UIImageView!
    
    @IBOutlet weak var coinButton: UIButton!

    @IBOutlet weak var nooftapslbl: UILabel!
    
    @IBOutlet weak var howmanttaps: UITextField!
    
    @IBOutlet weak var runbutton: UIButton!
    

    @IBAction func pressToPlay(sender: UIBarButtonItem) {
        
        
        if howmanttaps.text != nil && howmanttaps.text != ""{
            
            runbutton.hidden = true;
            howmanttaps.hidden = true;
            tapperimg.hidden = true;
            
            coinButton.hidden = false;
            nooftapslbl.hidden = false;

            
            maxTaps = Int (Int(howmanttaps.text)!)
        }
    }



    @IBAction func onCoinPress(sender: UIButton) {
        taps++;
        
        if taps >= maxTaps{
            resetGame();
        }else{
            nooftapslbl.text = "\(taps) Taps";
        }
    
    
    }
    
    
    func resetGame(){
        runbutton.hidden = false;
        howmanttaps.hidden = false;
        tapperimg.hidden = false;
        
        howmanttaps.text = "";
        maxTaps = 0;
        coinButton.hidden = true;
        nooftapslbl.hidden = true;
    }

}

