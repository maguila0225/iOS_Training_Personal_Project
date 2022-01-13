//
//  RulesVC.swift
//  iOS_Training_Product_Demo
//
//  Created by OPSolutions on 1/13/22.
//

import UIKit

class RulesVC: UIViewController {
    let vcName: String = "RulesVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        log_VC_Load(vcName: vcName)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        log_VC_Appear(vcName: vcName)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        log_VC_Dismiss(vcName: vcName)
    }
}
