//
//  Questions.swift
//  MoodMusic
//
//  Created by Ahmet Ali ÇETİN on 28.10.2022.
//

import Foundation

struct Questions {
    let questionText: String
    let button1: String
    let button2: String
    
    init(q: String, b1: String, b2: String) {
        self.questionText = q
        self.button1 = b1
        self.button2 = b2
    }
}
