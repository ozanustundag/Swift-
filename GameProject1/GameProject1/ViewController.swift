import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var kennyImage: UIImageView!
    @IBOutlet weak var kennyImage2: UIImageView!
    @IBOutlet weak var kennyImage3: UIImageView!
    @IBOutlet weak var kennyImage4: UIImageView!
    @IBOutlet weak var kennyImage5: UIImageView!
    @IBOutlet weak var kennyImage6: UIImageView!
    @IBOutlet weak var kennyImage7: UIImageView!
    @IBOutlet weak var kennyImage8: UIImageView!
    @IBOutlet weak var kennyImage9: UIImageView!
    var scoreCounter = 0
    
    var timer = Timer()
    var hideTimer = Timer()
    
    var timeCounter = 10
    
    let storedScore = UserDefaults.standard.object(forKey: "HighScore")
    
    var highScore = UserDefaults.standard.object(forKey: "HighScore")
    
    var kennyArray = [UIImageView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        highScoreLabel.text = "Highscore: \(UserDefaults.standard.object(forKey: "HighScore") as? Int ?? 0)"
        kennyImage.isUserInteractionEnabled = true
        kennyImage2.isUserInteractionEnabled = true
        kennyImage3.isUserInteractionEnabled = true
        kennyImage4.isUserInteractionEnabled = true
        kennyImage5.isUserInteractionEnabled = true
        kennyImage6.isUserInteractionEnabled = true
        kennyImage7.isUserInteractionEnabled = true
        kennyImage8.isUserInteractionEnabled = true
        kennyImage9.isUserInteractionEnabled = true
       
        let kennyGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer2 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer3 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer4 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer5 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer6 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer7 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer8 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        let kennyGestureRecognizer9 = UITapGestureRecognizer(target: self, action:#selector(kennyTapped))
        
        kennyImage.addGestureRecognizer(kennyGestureRecognizer)
        kennyImage2.addGestureRecognizer(kennyGestureRecognizer2)
        kennyImage3.addGestureRecognizer(kennyGestureRecognizer3)
        kennyImage4.addGestureRecognizer(kennyGestureRecognizer4)
        kennyImage5.addGestureRecognizer(kennyGestureRecognizer5)
        kennyImage6.addGestureRecognizer(kennyGestureRecognizer6)
        kennyImage7.addGestureRecognizer(kennyGestureRecognizer7)
        kennyImage8.addGestureRecognizer(kennyGestureRecognizer8)
        kennyImage9.addGestureRecognizer(kennyGestureRecognizer9)
        
        kennyArray = [kennyImage,kennyImage2,kennyImage3,kennyImage4,kennyImage5,kennyImage6,kennyImage7,kennyImage8,kennyImage9]
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(hideKenny), userInfo: nil, repeats: true  )
        
    }
    @objc func hideKenny()
    {
        for kenny in kennyArray{
            kenny.isHidden  = true
        }
        let random = Int(arc4random_uniform(UInt32(kennyArray.count-1)))
        kennyArray[random].isHidden = false
    }
   @objc func kennyTapped(){
       print("kenny tapped")
       scoreCounter += 1
       scoreLabel.text = "Score: \(scoreCounter)"
        
    }
    @objc func timerFunc(){
        timeCounter -= 1
        timeLabel.text = "Time: \(timeCounter)"
        
        if timeCounter == 0 {
            if  scoreCounter > (highScore as? Int ?? 0 )  {
            UserDefaults.standard.set(scoreCounter, forKey: "HighScore")
                highScoreLabel.text = "Highscore: \(scoreCounter)"
                
                let HighScoreAlert = UIAlertController(title: "Game Over", message: "New High SCORE:\(scoreCounter)", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
                let replayButoon = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    //replay funct,on
                    self.scoreCounter = 0
                    self.timeCounter = 10
                    self.scoreLabel.text = "Score: \(self.scoreCounter)"
                    self.timeLabel.text = "Time:\(self.timeCounter)"
                    self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerFunc), userInfo: nil, repeats: true)
                    self.hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(self.hideKenny), userInfo: nil, repeats: true  )
                }
                HighScoreAlert.addAction(okButton)
                HighScoreAlert.addAction(replayButoon)
                self.present( HighScoreAlert,animated: true, completion: nil)
                
            }
            else {
                let EndGameAlert = UIAlertController(title: "Game Over", message: "SCORE:\(scoreCounter)", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
                let replayButoon = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { (UIAlertAction) in
                    //replay funct
                    self.timeCounter = 10
                    self.scoreCounter = 0
                    self.scoreLabel.text = "Score: \(self.scoreCounter)"
                    self.timeLabel.text = "Time:\(self.timeCounter)"
                    self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerFunc), userInfo: nil, repeats: true)
                    self.hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(self.hideKenny), userInfo: nil, repeats: true  )
                        
                }
                EndGameAlert.addAction(replayButoon)
                EndGameAlert.addAction(okButton)
                self.present( EndGameAlert,animated: true, completion: nil)
            }
            
            timer.invalidate()
            hideTimer.invalidate()
        }
    }
}

