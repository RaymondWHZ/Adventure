//
//  ViewController.swift
//  Adventure
//
//  Created by iD Student on 7/17/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit

var haveRope=false
var haveAxe=false
var isMorning=false

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gameStart(_ sender: Any) {
        haveRope=false
        haveAxe=false
        isMorning=false
    }
    
    @IBAction func getRope(_ sender: Any) {
        haveRope=true
    }
    
    @IBAction func getAxe(_ sender: Any) {
        haveAxe=true
    }
    
    @IBAction func overnight(_ sender: Any) {
        isMorning=true
    }
    
    @IBAction func headLeft(_ sender: Any) {
        if haveAxe{
            performSegue(withIdentifier: "Kill The Bear", sender: nil)
        }
        else{
            performSegue(withIdentifier: "Killed By Bear", sender: nil)
        }
    }
    
    @IBAction func toThePassage(_ sender: Any) {
        if isMorning{
            performSegue(withIdentifier: "Flood", sender: nil)
        }
        else{
            performSegue(withIdentifier: "Get Pickaxe", sender: nil)
        }
    }
    
    @IBAction func floodComes(_ sender: Any) {
        if haveRope{
            performSegue(withIdentifier: "Rope", sender: nil)
        }
        else if haveAxe{
            performSegue(withIdentifier: "Axe", sender: nil)
        }
        else{
            performSegue(withIdentifier: "Nothing", sender: nil)
        }
    }
    
    @IBAction func climbDown(_ sender: Any) {
        if haveRope{
            performSegue(withIdentifier: "Land Down Cliff", sender: nil)
        }
        else{
            performSegue(withIdentifier: "Fall Down Cliff", sender: nil)
        }
    }
    
    @IBAction func turnRight(_ sender: Any) {
        if haveAxe{
            performSegue(withIdentifier: "Kill The Bear", sender: nil)
        }
        else{
            performSegue(withIdentifier: "Killed By Bear", sender: nil)
        }
    }
}

