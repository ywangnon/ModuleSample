//
//  CustomAlert.swift
//  ModuleProject
//
//  Created by Hansub Yoo on 2020/04/27.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import UIKit
import MyFramework

class CustomAlert: UIViewController {
    private var alertView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var alertLabel: UILabel = {
        let label = UILabel()
        label.text = "alert"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var acceptButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var rejectButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemRed
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addBlurEffect()
        
        self.setViewFoundations()
        self.setAddSubViews()
        self.setLayouts()
        self.setDelegates()
        self.setAddTargets()
        self.setGestures()
    }
    
    func addBlurEffect() {
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.view.addSubview(blurEffectView)
    }
    
    func setViewFoundations() {
        
    }
    
    func setAddSubViews() {
        self.view.addSubviews([
            self.alertView,
            self.alertLabel,
            self.acceptButton,
            self.rejectButton
        ])
    }
    
    func setLayouts() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.alertView.widthAnchor.constraint(equalToConstant: 200),
            self.alertView.heightAnchor.constraint(equalToConstant: 120),
            self.alertView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
            self.alertView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            self.alertLabel.leadingAnchor.constraint(equalTo: self.alertView.leadingAnchor),
            self.alertLabel.trailingAnchor.constraint(equalTo: self.alertView.trailingAnchor),
            self.alertLabel.heightAnchor.constraint(equalToConstant: 48),
            self.alertLabel.topAnchor.constraint(equalTo: self.alertView.topAnchor)
        ])
        
        NSLayoutConstraint.activate([
            self.acceptButton.widthAnchor.constraint(equalToConstant: 40),
            self.acceptButton.heightAnchor.constraint(equalToConstant: 40),
            self.acceptButton.centerYAnchor.constraint(equalTo: self.alertView.bottomAnchor),
            self.acceptButton.centerXAnchor.constraint(equalTo: self.alertView.leadingAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            self.rejectButton.widthAnchor.constraint(equalToConstant: 40),
            self.rejectButton.heightAnchor.constraint(equalToConstant: 40),
            self.rejectButton.centerYAnchor.constraint(equalTo: self.alertView.bottomAnchor),
            self.rejectButton.centerXAnchor.constraint(equalTo: self.alertView.trailingAnchor, constant: -50)
        ])
    }
    
    func setDelegates() {
        
    }
    
    func setAddTargets() {
        
    }
    
    func setGestures() {
        
    }
}

extension CustomAlert {
    private enum alertButtonType {
        case accept
        case reject
    }
    open func isHiddenAcceptButton() -> CustomAlert {
        self.acceptButton.isHidden = true
        return self
    }
    /// 애매허다. 테스트하기에는 애매한 기능
    /// - Returns: <#description#>
    open func isHiddenRejectButton() -> CustomAlert {
        self.rejectButton.isHidden = true
        return self
    }
}
