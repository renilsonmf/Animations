//
//  ViewController.swift
//  Animations
//
//  Created by Renilson Moreira on 09/07/22.
//

import UIKit

public class AnimationViewController: UIViewController {

    let contentView = MyAnimationView()
    
    public override func loadView() {
        super.loadView()
        self.view = contentView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        contentView.backMainAppButton.addTarget(self, action: #selector(didTapMainAppBackButton), for: .touchUpInside)
            
        playAnimation()
    }
    
    @objc func didTapMainAppBackButton() {
        dismiss(animated: true, completion: nil)
    }

    func playAnimation() {
        self.contentView.animationView.play { played in
            if played == true {
                print("Navigate here")
            }else {
                self.playAnimation()
            }
        }
    }


}


