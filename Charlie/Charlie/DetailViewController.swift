//
//  DetailViewController.swift
//  Charlie
//
//  Created by Hiromune Ito on 2016/06/28.
//  Copyright © 2016年 Muniere. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  @IBOutlet weak var titleLabel: UILabel!

  var city: String?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = city
    titleLabel.text = city
  }
}
