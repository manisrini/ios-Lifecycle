//
//  Screen1VC.swift
//  LIfecycle
//
//  Created by Manikandan on 08/11/24.
//

import Foundation
import UIKit


protocol Screen1VCProtocol: AnyObject {
    func didTapBtn()
}

class Screen1VC : UIViewController{
    
    weak var delegate : Screen1VCProtocol?
    
    @IBAction func didTapBtn(_ sender: Any) {
        delegate?.didTapBtn()
    }
    
    override func viewDidLoad() {
        print("Screen1VC viewDidLoad")
        self.view.backgroundColor = .red
    }
}
