//
//  SinglePlayerVC.swift
//  iOS_Training_Product_Demo
//
//  Created by OPSolutions on 1/13/22.
//

import UIKit

class SinglePlayerVC: UIViewController {
    let vcName: String = "SinglePlayerVC"
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var lizardButton: UIButton!
    @IBOutlet weak var spockButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rockButton.setImage(UIImage(named: "rockButton.png"), for: .normal)
        paperButton.setImage(UIImage(named: "paperButton.png"), for: .normal)
        scissorsButton.setImage(UIImage(named: "scissorsButton.png"), for: .normal)
        lizardButton.setImage(UIImage(named: "lizardButton.png"), for: .normal)
        spockButton.setImage(UIImage(named: "spockButton.png"), for: .normal)

        log_VC_Load(vcName: vcName)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        log_VC_Appear(vcName: vcName)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        log_VC_Dismiss(vcName: vcName)
    }
    
    @IBAction func exitButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
