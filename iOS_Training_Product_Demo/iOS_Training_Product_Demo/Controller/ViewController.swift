//
//  ViewController.swift
//  iOS_Training_Product_Demo
//
//  Created by OPSolutions on 1/13/22.
//


//Scissors cuts paper.
//Paper covers rock.
//Rock crushes lizard.
//Lizard poisons Spock.
//Spock smashes scissors.
//Scissors decapitates lizard.
//Lizard eats paper.
//Paper disproves Spock.
//Spock vaporizes rock.
//Rock crushes scissors.


import UIKit

func log_VC_Load(vcName: String) {
    NSLog("View controller \(vcName) loaded")
}
func log_VC_Appear(vcName: String) {
    NSLog("View controller \(vcName) appeared")
}
func log_VC_Dismiss(vcName: String) {
    NSLog("View controller \(vcName) dismissed")
}


class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var multiplayerButton: UIButton!
    @IBOutlet weak var leaderboardButton: UIButton!
    @IBOutlet weak var rulesButton: UIButton!
    @IBOutlet weak var gameLogo: UIImageView!
    @IBOutlet weak var exitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameLogo.image = UIImage(named: "gameLogo.png")
        startButton.layer.cornerRadius = 0.5 * startButton.bounds.size.height
        multiplayerButton.layer.cornerRadius = 0.5 * startButton.bounds.size.height
        leaderboardButton.layer.cornerRadius = 0.5 * startButton.bounds.size.height
        rulesButton.layer.cornerRadius = 0.5 * startButton.bounds.size.height
        exitButton.layer.cornerRadius = 0.5 * startButton.bounds.size.height
    }

    @IBAction func startButtonPress(_ sender: Any) {
        let vcIdentifier: String = "SinglePlayerVC"
        let fullScreenFlag = true
        screenTransition(vcIdentifier: vcIdentifier,fullScreenFlag: fullScreenFlag)
    }
    
    @IBAction func multiplayerButtonPress(_ sender: Any) {
        let vcIdentifier: String = "MultiplayerVC"
        let fullScreenFlag = false
        screenTransition(vcIdentifier: vcIdentifier,fullScreenFlag: fullScreenFlag)
    }
    
    @IBAction func leaderboardButtonPress(_ sender: Any) {
        let vcIdentifier: String = "LeaderboardVC"
        let fullScreenFlag = false
        screenTransition(vcIdentifier: vcIdentifier,fullScreenFlag: fullScreenFlag)
    }
    
    @IBAction func rulesButtonPress(_ sender: Any) {
        let vcIdentifier: String = "RulesVC"
        let fullScreenFlag = false
        screenTransition(vcIdentifier: vcIdentifier,fullScreenFlag: fullScreenFlag)
    }
    
    @IBAction func exitButtonPress(_ sender: Any) {
        print("Close Application")
        exit(0)
    }
    func screenTransition(vcIdentifier: String, fullScreenFlag: Bool){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: vcIdentifier)
        if fullScreenFlag == true{
            vc.modalPresentationStyle = .fullScreen
        }
        present(vc, animated: true, completion: nil)
    }
    
}

