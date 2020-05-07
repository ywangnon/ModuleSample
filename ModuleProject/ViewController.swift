//
//  ViewController.swift
//  ModuleProject
//
//  Created by Hansub Yoo on 2020/04/27.
//  Copyright © 2020 Hansub Yoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var backgroundLabel: UILabel = {
        let label = UILabel()
        label.text = "background"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setViewFoundations()
        self.setAddSubViews()
        self.setLayouts()
        self.setDelegates()
        self.setAddTargets()
        self.setGestures()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    func setViewFoundations() {
        
    }
    
    func setAddSubViews() {
        self.view.addSubview(self.backgroundLabel)
    }
    
    func setLayouts() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.backgroundLabel.widthAnchor.constraint(equalToConstant: 120),
            self.backgroundLabel.heightAnchor.constraint(equalToConstant: 80),
            self.backgroundLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.backgroundLabel.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor)
        ])
    }
    
    func setDelegates() {
        
    }
    
    func setAddTargets() {
        
    }
    
    func setGestures() {
        
    }
}

