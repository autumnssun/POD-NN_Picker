//
//  DisplayModule.swift
//  nn_pickers
//
//  Created by Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//
import UIKit
import Foundation
import SnapKit

public class DisplayModule: UIView, ModuleProtocol {
    public var backDrop: UIView = UIView()
    public var stage: UIView = UIView()
    public var _action:Selector?
    public var _target:UIResponder?
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setUpBackDrop()
        setUpStage()
    }
    
    public func setUpStage(){
        addSubview(stage)
        stage.backgroundColor = UIColor.white
        stage.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview().dividedBy(3)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    public func setUpBackDrop(){
        addSubview(backDrop)
        backDrop.backgroundColor = UIColor.black
        backDrop.snp.makeConstraints { (make) in
            make.size.equalToSuperview()
            make.center.equalToSuperview()
        }
        backDrop.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapOnBackdrop)))
    }
    

    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func hide(){
        isHidden = true
    }
    
    func show(){
        isHidden = false
    }
    
    func dismiss(){
        dismiss(animated: true)
    }
    
    @objc public func didTapOnBackdrop(){
        dismiss()
    }
    
}


