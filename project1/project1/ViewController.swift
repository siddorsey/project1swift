//
//  ViewController.swift
//  project1
//
//  Created by Dorsey, Sidney G on 4/9/18.
//  Copyright © 2018 Dorsey, Sidney G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var water:Int = 0
    var fire:Int = 0
    var air:Int = 0
    var fly:Int = 0
    var underwater:Int = 0
    var powerful:Int = 0
    var cute:Int = 0
    var terrifying:Int = 0
    var total:Int = 0
    
    @IBOutlet weak var myGreeting: UILabel!
    @IBOutlet weak var myName: UITextField!
    
    @IBAction func mySubmit(_ sender: Any) {
        let name = myName.text!
        myGreeting.text = "Welcome, \(name)!"
        myName.resignFirstResponder()
    }
    
    @IBAction func waterSwitch(_ sender: UISwitch) {
        if sender.isOn {
            water = 1
        }
        else {
            water = 0
        }
    }
    
    @IBAction func fireSwitch(_ sender: UISwitch) {
        if sender.isOn {
            fire = 2
        }
        else {
            fire = 0
        }
    }
    
    @IBAction func airSwitch(_ sender: UISwitch) {
        if sender.isOn {
            air = 3
        }
        else {
            air = 0
        }
    }
    
    @IBAction func flySwitch(_ sender: UISwitch) {
        if sender.isOn {
            fly = 2
        }
        else {
            fly = 0
        }
    }
    
    @IBAction func breatheSwitch(_ sender: UISwitch) {
        if sender.isOn {
            underwater = 1
        }
        else {
            underwater = 0
        }
    }
    
    @IBAction func powerfulSwitch(_ sender: UISwitch) {
        if sender.isOn {
            powerful = 2
        }
        else {
            powerful = 0
        }
    }
    
    @IBAction func cuteSwitch(_ sender: UISwitch) {
        if sender.isOn {
            cute = 3
        }
        else {
            cute = 0
        }
    }
    
    @IBAction func terrifyingSwitch(_ sender: UISwitch) {
        if sender.isOn {
            terrifying = 1
        }
        else {
            terrifying = 0
        }
    }
    
    @IBOutlet weak var myCreature: UILabel!
    
    @IBOutlet weak var dragonPIC: UIImageView!
    @IBOutlet weak var fairyPIC: UIImageView!
    @IBOutlet weak var krakenPIC: UIImageView!
    
    
    @IBAction func myWhat(_ sender: Any) {
        total = water + fire + air + fly + underwater + powerful + cute + terrifying
        
        if(total <= 3) {
            myCreature.text = "You are a Kraken! The kraken is a legendary sea monster known to dwell off the coasts of Norway & Greenland. You are feared by everyone that takes to the oceans."
            krakenPIC.isHidden = false
            dragonPIC.isHidden = true
            fairyPIC.isHidden = true
        }
        else if(total > 3 && total <= 6){
            myCreature.text = "You are a dragon! Dragons appear in the folklore of many cultures around the world. Your powerful wings & fire-breathing ability make you one to be feared and praised. "
            dragonPIC.isHidden = false
            fairyPIC.isHidden = true
            krakenPIC.isHidden = true

        }
        else {
            myCreature.text = "You are a fairy! Fairies are a form of spirit, mostly having to do with nature. Fairies have been known to be enchanting, but can also cause a little havoc (like Tinkerbell)."
            fairyPIC.isHidden = false
            krakenPIC.isHidden = true
            dragonPIC.isHidden = true

        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

