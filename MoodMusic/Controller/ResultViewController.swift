//
//  ResultViewController.swift
//  MoodMusic
//
//  Created by Ahmet Ali ÇETİN on 31.10.2022.
//

import Foundation
import UIKit

class ResultViewController: LoginScreen {
    
    @IBOutlet weak var musicImage: UIImageView!
    @IBOutlet weak var appleMusic: UIButton!
    @IBOutlet weak var spotify: UIButton!
    @IBOutlet weak var youtube: UIButton!
    @IBOutlet weak var musicName: UILabel!
    
    
    
    let appleMusicLogo = UIImage(systemName: "appleMusicLogo")
    let spotifyLogo = UIImage(systemName: "spotifyLogo")
    let youtubeMusicLogo = UIImage(systemName: "youtubeMusicLogo")
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appleMusic.setImage(appleMusicLogo, for: .normal)
        spotify.setImage(spotifyLogo, for: .normal)
        youtube.setImage(youtubeMusicLogo, for: .normal)
        
        
    }
    
    @IBAction func appleMusicPressed(_ sender: UIButton) {
        print("Apple music")
        
    }
    @IBAction func spotifyPressed(_ sender: UIButton) {
        print("spotify")
    }
    @IBAction func youtubePressed(_ sender: UIButton) {
        print("youtube")
    }
}

