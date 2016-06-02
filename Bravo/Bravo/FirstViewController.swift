//
//  FirstViewController.swift
//  Bravo
//
//  Created by Hiromune Ito on 2016/06/02.
//  Copyright © 2016年 Muniere. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  @IBOutlet weak var rectView: UIView!

  @IBAction func fadeIn(sender: AnyObject) {
    UIView.animateWithDuration(1.0,
      animations: {
        self.rectView.alpha = 1.0
      }
    )
  }

  @IBAction func fadeOut(sender: AnyObject) {
    UIView.animateWithDuration(1.0,
      animations: {
        self.rectView.alpha = 0.0
      }
    )
  }
}