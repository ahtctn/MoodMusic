//
//  QuizBrain.swift
//  MoodMusic
//
//  Created by Ahmet Ali ÇETİN on 1.11.2022.
//

import Foundation

struct QuizBrain {
    
    var questionNumber: Int = 0
    
    let questions = [
        Questions(q: "Sevgilin var mı?", b1:  "Evet var.", b2: "Hayır Yok"),
        Questions(q: "Uygulamayı ne zaman kullanıyorsun?", b1: "Gece kullanıyorum.", b2: "Gündüz kullanıyorum."),
        Questions(q: "Issız bir adaya düşsen yanına ne alırdın?", b1: "Tabii ki de yemek alırdım.", b2: "Kamp malzemeleri alırdım."),
        Questions(q: "Spor yapıyor musun?", b1: "Evet yapıyorum.", b2: "Hayır yapmıyorum."),
        Questions(q: "TEST CEVAPLARIN KAYDEDİLDİ", b1: "", b2: "")
    ]
    
    func checkAnswer(_ userAnswer: String) -> Bool{
        print(userAnswer)
        
        if userAnswer == questions[questionNumber].button1{
            return true
            
        } else if userAnswer == questions[questionNumber].button2 {
            return false
        }
        
        return false
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].questionText
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(questions.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < questions.count {
            questionNumber += 1
            print("question number: \(questionNumber)")
        }
    }
}
