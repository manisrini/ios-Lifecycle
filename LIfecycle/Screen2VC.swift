//
//  Screen2VC.swift
//  LIfecycle
//
//  Created by Manikandan on 14/11/24.
//
import UIKit

protocol Screen2VCProtocol: AnyObject {
    func didTapBtn()
}

final class Screen2VC : UIViewController{
    
    weak var delegate : Screen2VCProtocol?
    
    override func viewDidLoad() {
        print("Screen2VC viewDidLoad")
        self.view.backgroundColor = .yellow
    }
    
    @IBAction func didTapBtn(_ sender: Any) {
        delegate?.didTapBtn()
    }
}
