//
//  QuestionViewController.swift
//  MoodMusic
//
//  Created by Ahmet Ali ÇETİN on 20.10.2022.
//

import Foundation
import UIKit

class QuestionViewController: LoginScreen {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionScore: Int = 0
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonUIDetails()
        updateUI()
        print("Deneme")
        print("Commit yapılacak...")
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItAnswer = quizBrain.checkAnswer(userAnswer)
        
        
        if userGotItAnswer {
            questionScore += 1
            sender.backgroundColor = UIColor.systemBlue
            print("question score: \(questionScore)")
            
            quizBrain.nextQuestion()
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quizBrain.questions[quizBrain.questionNumber].button2
        
        if userAnswer == actualAnswer {
            questionScore -= 1
            sender.backgroundColor = UIColor.systemBlue
            print("question score \(questionScore)")
            
            quizBrain.nextQuestion()
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        print("Go to result button pressed.")
    }
    
    func chooseTheSong(){
        
        let randomSong =
    [[
            MusicModels(mText: "The Trooper", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Master Of Puppets", mAuthor: "Metallica", mImage: <#T##UIImage#>),
            MusicModels(mText: "Paranoid", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Welcome To The Jungle", mAuthor: "Metallica", mImage: <#T##UIImage#>),
            MusicModels(mText: "Kickstart My Heart", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Angel Of Death", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Holy Diver", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Heaven And Hell", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "You Could Be Mine", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Rock You Like A Hurricane", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Iron Man", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Paradise City", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "So Many Skies", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Mother", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Fade To Black", mAuthor: <#T##String#>, mImage: <#T##UIImage#>)
        ],[
            MusicModels(mText: "You're The Inspiration", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Make It With You", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Shape Of My Heart", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Send Me An Angel", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Working Class Hero", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Still Got The Blues", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Stairway To Heawen", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Helplessly Hoping", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Knockin' On Heaven's Door", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "It's Probably Me", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Zombie (Acoustic)", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Don't Cry (Original)", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "How Did You Love", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "When The Children Cry", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Wish You Were Here", mAuthor: <#T##String#>, mImage: <#T##UIImage#>)
        ],[
            MusicModels(mText: "Anti Hero", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Unholy", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Lavender Haze", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "I'm Good (Blue)", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "La Bachata", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Maroon", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Neverita", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "They Don't Really Care About Us", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "I Wanna Be Yours", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Billie Jean", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Beat It", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Dangerous", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Bad Habit", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Feel The Love", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "As It Was", mAuthor: <#T##String#>, mImage: <#T##UIImage#>)
        ],[
            MusicModels(mText: "You Know How We Do It", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "All Eyez On Me", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Bow Down", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Fuck Tha Police", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Forgot About Dre", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "The Real Slim Shady", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "I'm Supposed To Die Tonight", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Rainy Days (feat. Eminem)", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "ISIS", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Dear God", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Juicy", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "It Was A Good Day", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Flashing Lights", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Hit 'Em Up", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Heartless", mAuthor: <#T##String#>, mImage: <#T##UIImage#>)
        ],[
            MusicModels(mText: "Kırmızı", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Aşkın Olayım", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Şans Meleğim", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Irgalamaz Beni", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Ben Tabii Ki", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Adımı Kalbine Yaz", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Every Way That I can", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Bandır Bandıra", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Kuzu Kuzu", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Hayat Zaten Zor", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Küçücüğüm", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Kalp Kalbe Karşı", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Hop De", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText:  "Manifesto", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Kızıl, Mavi", mAuthor: <#T##String#>, mImage: <#T##UIImage#>)
        ],[
            MusicModels(mText: "Manhattan Sunrise", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Whitby", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "the color of the sky", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Future Love", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Deux Pensees", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "The Arts And The Hours", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Lilac", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "HYMN", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Wandering II", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Enigma", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "K.A.H.D.- Home Session", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Solitude I", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "January", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "In My Room", mAuthor: <#T##String#>, mImage: <#T##UIImage#>),
            MusicModels(mText: "Evening Light", mAuthor: <#T##String#>, mImage: <#T##UIImage#>)
        ],
    ]
        
        let randomSongPicker = [ ["The Trooper", "Master Of Puppets", "Paranoid", "Welcome To The Jungle", "Kickstart My Heart",
                                  "Angel Of Death", "Holy Diver", "Heaven And Hell", "You Could Be Mine", "Rock You Like A Hurricane",
                                  "Iron Man", "Paradise City", "So Many Skies", "Mother", "Fade To Black"], //-3 numaralı kategori -> Hard Rock
                                 
                                 ["You're The Inspiration", "Make It With You", "Shape Of My Heart", "Send Me An Angel", "Working Class Hero",
                                  "Still Got The Blues", "Stairway To Heawen", "Helplessly Hoping", "Knockin' On Heaven's Door", "It's Probably Me",
                                  "Zombie (Acoustic)", "Don't Cry (Original)", "How Did You Love", "When The Children Cry", "Wish You Were Here"], // -2 numaralı kategori -> Rock
                                 
                                 ["Anti Hero", "Unholy", "Lavender Haze", "I'm Good (Blue)", "La Bachata",
                                  "Maroon", "Neverita","They Don't Really Care About Us", "I Wanna Be Yours", "Billie Jean",
                                  "Beat It", "Dangerous", "Bad Habit", "Feel The Love", "As It Was"], // -1 numaralı kategori -> Pop
                                 
                                 ["You Know How We Do It", "All Eyez On Me", "Bow Down", "Fuck Tha Police", "Forgot About Dre",
                                  "The Real Slim Shady","I'm Supposed To Die Tonight","Rainy Days (feat. Eminem)","ISIS","Dear God",
                                  "Juicy","It Was A Good Day","Flashing Lights","Hit 'Em Up","Heartless"], // 0 numaralı kategori -> Rap
                                 
                                 ["Kırmızı", "Aşkın Olayım", "Şans Meleğim", "Irgalamaz Beni", "Ben Tabii Ki",
                                  "Adımı Kalbine Yaz", "Every Way That I can", "Bandır Bandıra",
                                  "Kuzu Kuzu", "Hayat Zaten Zor", "Küçücüğüm", "Kalp Kalbe Karşı", "Hop De", "Manifesto", "Kızıl, Mavi"], // 1 numaralı kategori -> Türkçe Pop
                                 
                                 ["Azerbaijan", "Battle HYMN Of The Republic", "Katyusha", "The Red Army Is The Strongest", "La Marseillaise",
                                  "İzmir Yollarında", "Drei Lilien", "Farewell Of Slavianka", "Unser Panzerdivision","Im Wald, im grünen Wald",
                                  "God! Save The Tsar!","Tuna Nehri","Les Dragons De Noailles","Attaturk March (Turkey)","The Caisson Song"], // 2 numaralı kategori -> Marş
                                 
                                 ["Manhattan Sunrise", "Whitby", "the color of the sky", "Future Love", "Deux Pensees",
                                  "The Arts And The Hours", "Lilac", "HYMN", "Wandering II", "Enigma",
                                  "K.A.H.D.- Home Session", "Solitude I", "January", "In My Room", "Evening Light"]] // 3 numaralı kategori -> Akustik
        
        let randomNumber = Int.random(in: 0...14)
        
        func randomSongGenerator(category: Int){
            let myRandomMusic = randomSongPicker[category][randomNumber]
            print(myRandomMusic)
        }
        
        //Switch case
        switch questionScore {
        case -3:
            randomSongGenerator(category: 0)
        case -2:
            randomSongGenerator(category: 1)
        case -1:
            randomSongGenerator(category: 2)
        case 0:
            randomSongGenerator(category: 3)
        case 1:
            randomSongGenerator(category: 4)
        case 2:
            randomSongGenerator(category: 5)
        case 3:
            randomSongGenerator(category: 6)
        default:
            print("Out of range")
        }
    }
    
    //Sonuç durumunda neler yapılacağıyla alakalı ekran.
    func resultScreenPreps(){
        if quizBrain.questionNumber + 1 == quizBrain.questions.count {
            button1.isHidden = true
            button2.isHidden = true
            resultButton.setTitle("Sonuca Git!", for: .normal)
            resultButton.isHidden = false
            print("işlem bitmiştir.")
            print("quetionNumber = \(quizBrain.questionNumber)")
            print("questions.count \(quizBrain.questions.count)")
        } else {
            print("not yet son")
        }
        
    }
    
    @objc func updateUI(){
        chooseTheSong()
        resultScreenPreps()
        questionLabel.text = quizBrain.getQuestionText()
        
        button1.setTitle("\(quizBrain.questions[quizBrain.questionNumber].button1)", for: .normal)
        button1.backgroundColor = UIColor.systemRed
        
        button2.setTitle("\(quizBrain.questions[quizBrain.questionNumber].button2)", for: .normal)
        button2.backgroundColor = UIColor.systemRed
        
        progressBar.progress = quizBrain.getProgress()
    }
    
    func buttonUIDetails() {
        resultButton.isHidden = true
        button1.layer.cornerRadius = 20
        button2.layer.cornerRadius = 20
        resultButton.layer.cornerRadius = 20
    }
}
