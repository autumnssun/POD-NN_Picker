//
//  TempuraSceneViewController.swift
//  nn_pickers
//
//  Created Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit
import SnapKit
import NN_PICKER
class TempuraSceneViewController: UIViewController, TempuraSceneViewProtocol {

	var presenter: TempuraScenePresenterProtocol?

    
    var IAMString:String!
    var IAM:UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        let text = UITextField()
        view.addSubview(text)
        text.placeholder = "hey"
        text.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().dividedBy(3)
            make.width.equalToSuperview().offset(-30)
            make.height.equalTo(50)
        }
        text.inputView = DisplayModule()        
    }
    
    
    
    @objc func btnTapped(){
        let prompt = DisplayModule()
        prompt.show(animated: true)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.addSubview(IAM)
        IAM.text = IAMString
        IAM.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }

}
