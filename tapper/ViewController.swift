//
//  ViewController.swift
//  tapper
//
//  Created by Arpita Bhatia on 6/2/16.
//  Copyright © 2016 Arpita Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinTapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            logoImg.hidden = true
            howManyTapsText.hidden = true
            playBtn.hidden = true
            
            coinTapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
        
    }
    
    @IBAction func onCoinTapButtonPressed(sender: UIButton!) {
        
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func updateTapsLabel(){
        
        tapsLbl.text = "\(currentTaps) Taps"
        
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
        
    }
    
    func restartGame() {
        
        maxTaps = 0
        howManyTapsText.text = ""
        
        logoImg.hidden = false
        howManyTapsText.hidden = false
        playBtn.hidden = false
        
        coinTapBtn.hidden = true
        tapsLbl.hidden = true
        
        
    }
    
    

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

