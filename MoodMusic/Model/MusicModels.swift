//
//  MusicModels.swift
//  MoodMusic
//
//  Created by Ahmet Ali ÇETİN on 1.11.2022.
//

import Foundation
import UIKit

struct MusicModels {
    let musicText: String
    let author: String
    let musicImage: UIImage
    
    init(mText: String, mAuthor: String, mImage: UIImage) {
        self.musicText = mText
        self.author = mAuthor
        self.musicImage = mImage
    }
}
