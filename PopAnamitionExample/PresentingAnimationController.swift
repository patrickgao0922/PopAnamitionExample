//
//  PresentingAnimationController.swift
//  PopAnamitionExample
//
//  Created by Work on 6/06/2016.
//  Copyright © 2016 com.patrickgao. All rights reserved.
//

import Cocoa
import pop

class PresentingAnimationController: NSObject,UIViewControllerAnimatedTransitioning {
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let fromView = transitionContext.viewControllerForKey(.FromViewControllerKey)
        
    }
}
