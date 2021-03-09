//
//  ViewController.swift
//  Steak_Timer
//
//  Created by Sheick on 2/11/21.
//

import UIKit

class ViewController: UIViewController {
    var steakTimer = ["rare":3, "medium":7, "wellDone":8]
    
    @IBAction func rareImageTapped(_ sender: Any) {
        //test
        print("rare")
    }
    @IBAction func mediumImageTapped(_ sender: Any) {
        print("medium")
    }
    @IBAction func wellDoneImageTaped(_ sender: Any) {
       
        print("well-done")
    }
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let timer = Timer(timeInterval: 1.0, repeats: true) { _ in print("DING DING!") }
    }
    
    @objc func updateTimer() {
        if startTime < totalTime {
            startTime += 1
            progressLabel.progress = Float((startTime))/Float((totalTime))
        }
        else {
            outputLabel.text = "Done"
            let path = Bundle.main.path(forResource: "ring", ofType: "wav")!
                let url = URL(fileURLWithPath: path)
            do {
                let sound = try AVAudioPlayer(contentsOf: url)
                player = sound
                sound.play()
            } catch {
                //
            }
            timer.invalidate()
            
        }
        
    }
        

   //Steak Timer-> 5,10,15
    
    
    
    

//look for a countdown timer on stack over flow
}

