//
//  MasterViewController.swift
//  UIBarButtonItem Appearance
//
//  Created by Klaas Pieter Annema on 14/11/2017.
//  Copyright © 2017 Sokneus. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

  @IBOutlet var label: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    editButtonItem.setTitleTextAttributes([
      .foregroundColor: UIColor.red,
      .font: UIFont(name: "Georgia", size: 12)!
    ], for: .normal)

    label.text =
      """
      To trigger the bug, tap the “Edit” button.

      Explanation:

      The “Edit” item's normal state has:

      titleTextAttributes: [
        .foregroundColor: red,
        .font: Georgia 12pt
      ]

      In previous iOS versions this configuration carried over to other states as well, but in iOS 11 other states now fallback to the default system appearance.
      """

    navigationItem.leftBarButtonItem = editButtonItem
  }
}
