//
//  ViewController.swift
//  MoodMusic
//
//  Created by Ahmet Ali ÇETİN on 20.10.2022.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var subtitleLabel: UILabel?
    @IBOutlet weak var startUsingAppButton: UIButton!
    var subtitleTextsScore: Int = 0
    let subtitles = ["Moduna en uygun müziği bul.", "Nasıl hissediyorsun?", "Mood Music Seni Tanıyor.", "Kendini müziğin eşsiz ritmine bırak.", "Soruları cevapla, modunu yakala."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startUsingAppButton?.layer.cornerRadius = 20
        
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func startUsingAppButton(_sender: UIButton) {
        
    }
    
    
    
    @objc func fireTimer() {
        
        if subtitleTextsScore + 1 < subtitles.count {
            subtitleTextsScore += 1
            if subtitleLabel == nil {
                subtitleLabel?.text = "Mood Music'e hoşgeldiniz."
            } else {
                subtitleLabel?.text = subtitles[subtitleTextsScore]
            }
        } else {
            subtitleTextsScore = 0
        }
    }
}



