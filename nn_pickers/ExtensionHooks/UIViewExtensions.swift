//
//  UIViewExtensions.swift
//  nn_pickers
//
//  Created by Tran Khoa on 29/6/18.
//  Copyright © 2018 app_modules. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    var topViewController:UIViewController?{
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        else{
            return nil
        }
    }
}

extension ModuleProtocol where Self:UIView{
    func show(animated:Bool){
        self.backDrop.alpha = 0
        self.stage.center = CGPoint(x: self.center.x, y: self.frame.height + self.stage.frame.height/2)
        if let topvc = topViewController{
            topvc.view.addSubview(self)
            if animated {
                UIView.animate(withDuration: 0.33, animations: {
                    self.backDrop.alpha = 0.66
                })
                UIView.animate(withDuration: 0.33, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 10, options: UIViewAnimationOptions(rawValue: 0), animations: {
                    self.stage.center  = self.center
                }, completion: { (completed) in
                    
                })
            }else{
                self.backDrop.alpha = 0.66
                self.stage.center  = self.center
            }
        }
    }
    
    func dismiss(animated:Bool){
        if animated {
            UIView.animate(withDuration: 0.33, animations: {
                self.backDrop.alpha = 0
            }, completion: { (completed) in
                
            })
            UIView.animate(withDuration: 0.33, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 10, options: UIViewAnimationOptions(rawValue: 0), animations: {
                self.stage.center = CGPoint(x: self.center.x, y: self.frame.height + self.stage.frame.height/2)
            }, completion: { (completed) in
                self.removeFromSuperview()
            })
        }else{
            self.removeFromSuperview()
        }
    }
}


