//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Shaik Ismail on 03/03/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    var timer:Timer?
    var cards: [UIImage?] = Deck.allvalues
    @IBOutlet var StopOutlet: UIButton!
    
    @IBOutlet var restartOutlet: UIButton!
    
    @IBOutlet var rulesOutlet: UIButton!
    
    @IBOutlet var CardImageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StopOutlet.layer.cornerRadius=8
        restartOutlet.layer.cornerRadius=8
        rulesOutlet.layer.cornerRadius=8
    }
    
    @IBAction func stopButton(_ sender: Any) {
        timer?.invalidate()
    }
    
    @IBAction func restartButton(_ sender: Any) {
        timer?.invalidate()
        startTimer()
    }
    
    @IBAction func RulesButton(_ sender: Any) {
    }
    func startTimer()
    {
        timer=Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
  @objc func showRandomImage()
    {
        CardImageview.image=cards.randomElement() ?? UIImage(named: "AH")
    }
   

}
