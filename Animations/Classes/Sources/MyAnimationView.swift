//
//  MyAnimationView.swift
//  Animations
//
//  Created by Renilson Moreira on 09/07/22.
//

import UIKit
import Lottie

class MyAnimationView: UIView {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var animationView: AnimationView = {
        let animation = AnimationView(name: "Saved")
        animation.contentMode = .scaleAspectFit
        animation.translatesAutoresizingMaskIntoConstraints = false
        animation.loopMode = .loop
        animation.play()
        return animation
    }()
    
    lazy var backMainAppButton: UIButton = {
        let button = UIButton()
        button.setTitle("Voltar para app principal", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupView() {
        addSubview(animationView)
        addSubview(backMainAppButton)
        
        NSLayoutConstraint.activate([
            animationView.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            animationView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            animationView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            animationView.heightAnchor.constraint(equalToConstant: 200),
            
            backMainAppButton.topAnchor.constraint(equalTo: animationView.bottomAnchor, constant: 50),
            backMainAppButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backMainAppButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            backMainAppButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}
