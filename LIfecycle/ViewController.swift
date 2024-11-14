//
//  ViewController.swift
//  LIfecycle
//
//  Created by Manikandan on 08/11/24.
//


//MARK: 1) Lifecycle methods 2)Two Protocol with same method definition sample

import UIKit

class ViewController: UIViewController, Screen1VCProtocol, Screen2VCProtocol {
    func didTapBtn() {
        print("Screen1VC didTapBtn")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    @IBAction func didTapBtn(_ sender: Any) {
        let bundle = Bundle(for: Screen1VC.self)
        let storyboard = UIStoryboard(name: "Screen1VC", bundle: bundle)
        if let screen1VC = storyboard.instantiateViewController(withIdentifier: "Screen1VC") as? Screen1VC{
            screen1VC.delegate = self
            self.navigationController?.pushViewController(screen1VC, animated: true)
        }

    }
    
    
    @IBAction func didTapScreen2Btn(_ sender: Any) {
        let bundle = Bundle(for: Screen2VC.self)
        let storyboard = UIStoryboard(name: "Screen2VC", bundle: bundle)
        if let screen2VC = storyboard.instantiateViewController(withIdentifier: "Screen2VC") as? Screen2VC{
            screen2VC.delegate = self
            self.navigationController?.pushViewController(screen2VC, animated: true)
        }
        
    }
}

