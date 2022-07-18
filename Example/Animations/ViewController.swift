//
//  ViewController.swift
//  Animations
//
//  Created by renilsonmf on 07/18/2022.
//  Copyright (c) 2022 renilsonmf. All rights reserved.
//

import UIKit
import Animations

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        openFeature()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openFeature() {
        let controller = AnimationViewController()
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

