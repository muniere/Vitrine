//
//  SecondViewController.swift
//  Bravo
//
//  Created by Hiromune Ito on 2016/06/02.
//  Copyright © 2016年 Muniere. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  @IBOutlet weak var rectView: UIView!

  @IBAction func goDown(sender: AnyObject) {
    UIView.animateWithDuration(1.0,
      delay: 0.0,
      options: .CurveEaseInOut,
      animations: {
        self.rectView.frame.origin.y = UIScreen.mainScreen().bounds.height - self.rectView.frame.height
      },
      completion: nil
    )
  }

  @IBAction func goUp(sender: AnyObject) {
    UIView.animateWithDuration(1.0,
      delay: 0.0,
      options: .CurveEaseInOut,
      animations: {
        self.rectView.frame.origin.y = 0.0
      },
      completion: nil
    )
  }

  @IBAction func blink(sender: AnyObject) {
    UIView.animateWithDuration(1.0,
      delay: 0.0,
      options: [.Repeat, .Autoreverse],
      animations: {
        self.rectView.alpha = 0.0
      },
      completion: nil
    )
  }

  @IBAction func stop(sender: AnyObject) {
    self.rectView.layer.removeAllAnimations()
    self.rectView.alpha = 1.0
  }
}