//
//  TableViewCell.swift
//  PopAnamitionExample
//
//  Created by Work on 4/06/2016.
//  Copyright © 2016 com.patrickgao. All rights reserved.
//

import UIKit
import pop

class TableViewCell: UITableViewCell {
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        if (self.highlighted){
            let scaleAnimation = POPBasicAnimation(propertyNamed: kPOPViewScaleXY)
            scaleAnimation.duration = 1.0
            scaleAnimation.toValue = NSValue(CGSize: CGSizeMake(1, 1))
            self.textLabel?.pop_addAnimation(scaleAnimation, forKey: "scalingUp")
        }
        else {
            let springAnimation = POPSpringAnimation(propertyNamed: kPOPViewScaleXY)
            springAnimation.toValue = NSValue(CGSize: CGSizeMake(0.9, 0.9))
            springAnimation.velocity = NSValue(CGSize: CGSizeMake(2, 2))
            springAnimation.springBounciness = 20
            self.textLabel?.pop_addAnimation(springAnimation, forKey: "springAnimation")
        }
        
        
    }

}
