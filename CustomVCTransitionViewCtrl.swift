//
//  CustomVCTransitionViewCtrl.swift
//  PopAnamitionExample
//
//  Created by Work on 5/06/2016.
//  Copyright © 2016 com.patrickgao. All rights reserved.
//

import Cocoa

class CustomVCTransitionViewCtrl: UIViewController,UIViewControllerTransitioningDelegate{

    @IBAction func didClickOnPresent(sender: AnyObject) {
        let modalVC = self.storyboard?.instantiateViewControllerWithIdentifier("customModal")
        modalVC?.transitioningDelegate = self
        modalVC?.modalPresentationStyle = .Custom
        self.navigationController?.presentViewController(modalVC, animated: true, completion: nil)
        
    }
    
    //#pragma mark - UIViewControllerTransitionDelegate -
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        // PresentingAnimationController()
    }
}
