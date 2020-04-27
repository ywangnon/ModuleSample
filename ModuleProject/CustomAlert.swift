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
    var alertView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var acceptButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var rejectButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setViewFoundations()
        self.setAddSubViews()
        self.setLayouts()
        self.setDelegates()
        self.setAddTargets()
        self.setGestures()
    }
    
    func setViewFoundations() {
        
    }
    
    func setAddSubViews() {
        
    }
    
    func setLayouts() {
        
    }
    
    func setDelegates() {
        
    }
    
    func setAddTargets() {
        
    }
    
    func setGestures() {
        
    }
}
