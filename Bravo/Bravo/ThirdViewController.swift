//
//  ThirdViewController.swift
//  Bravo
//
//  Created by Hiromune Ito on 2016/06/02.
//  Copyright © 2016年 Muniere. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

  @IBOutlet weak var rectView: UIView!

  @IBAction func animate1(sender: AnyObject) {
    UIView.animateKeyframesWithDuration(2.0,
      delay: 0.0,
      options: [],
      animations: {
        UIView.addKeyframeWithRelativeStartTime(0 / 5, relativeDuration: 1 / 5, animations: {
          self.rectView.frame.origin.x = UIScreen.mainScreen().bounds.width / 2 - self.rectView.frame.width / 2
          self.rectView.frame.origin.y = 0.0
        })

        UIView.addKeyframeWithRelativeStartTime(1 / 5, relativeDuration: 1 / 5, animations: {
          self.rectView.frame.origin.x = 0.0
          self.rectView.frame.origin.y = UIScreen.mainScreen().bounds.height / 2 - self.rectView.frame.height / 2
        })

        UIView.addKeyframeWithRelativeStartTime(2 / 5, relativeDuration: 1 / 5, animations: {
          self.rectView.frame.origin.x = UIScreen.mainScreen().bounds.width / 2 - self.rectView.frame.width / 2
          self.rectView.frame.origin.y = UIScreen.mainScreen().bounds.height - self.rectView.frame.height
        })

        UIView.addKeyframeWithRelativeStartTime(3 / 5, relativeDuration: 1 / 5, animations: {
          self.rectView.frame.origin.x = UIScreen.mainScreen().bounds.width - self.rectView.frame.width
          self.rectView.frame.origin.y = UIScreen.mainScreen().bounds.height / 2 - self.rectView.frame.height / 2
        })

        UIView.addKeyframeWithRelativeStartTime(4 / 5, relativeDuration: 1 / 5, animations: {
          self.rectView.frame.origin.x = UIScreen.mainScreen().bounds.width / 2 - self.rectView.frame.width / 2
          self.rectView.frame.origin.y = 0.0
        })

        UIView.addKeyframeWithRelativeStartTime(0 / 5, relativeDuration: 2 / 5, animations: {
          self.rectView.transform = CGAffineTransformConcat(
            CGAffineTransformMakeScale(0.1, 0.1),
            CGAffineTransformMakeRotation(CGFloat(M_PI))
          )
        })

        UIView.addKeyframeWithRelativeStartTime(2 / 5, relativeDuration: 3 / 5, animations: { 
          self.rectView.transform = CGAffineTransformIdentity
        })

        UIView.addKeyframeWithRelativeStartTime(0 / 5, relativeDuration: 4 / 5, animations: { 
          self.rectView.backgroundColor = UIColor.blueColor()
        })

        UIView.addKeyframeWithRelativeStartTime(4 / 5, relativeDuration: 1 / 5, animations: {
          self.rectView.backgroundColor = UIColor.redColor()
        })
      },
      completion: nil
    )
  }

  @IBAction func animate2(sender: AnyObject) {
    UIView.animateKeyframesWithDuration(0.6,
      delay: 0.0,
      options: [],
      animations: {
        UIView.addKeyframeWithRelativeStartTime(0 / 4, relativeDuration: 1 / 4, animations: {
          self.rectView.transform = CGAffineTransformMakeScale(1.4, 1.4)
        })

        UIView.addKeyframeWithRelativeStartTime(1 / 4, relativeDuration: 1 / 4, animations: {
          self.rectView.transform = CGAffineTransformMakeScale(0.9, 0.9)
        })

        UIView.addKeyframeWithRelativeStartTime(2 / 4, relativeDuration: 1 / 4, animations: {
          self.rectView.transform = CGAffineTransformMakeScale(1.2, 1.2)
        })

        UIView.addKeyframeWithRelativeStartTime(3 / 4, relativeDuration: 1 / 4, animations: {
          self.rectView.transform = CGAffineTransformIdentity
        })
      },
      completion: nil
    )
  }
}