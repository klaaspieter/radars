//
//  ViewController.swift
//  LayoutMargins
//
//  Created by Klaas Pieter Annema on 26/05/2017.
//  Copyright © 2017 Sokneus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let marginView = ViewWithMargins(frame: .zero)
    view.addSubview(marginView)

    let labelView = UIView()
    let label: UILabel = {
      let label = UILabel()
      label.text = "This label _is_ inset 15pt from all sides of the view"
      label.textColor = .white
      label.numberOfLines = 0
      return label
    }()
    labelView.backgroundColor = .green
    labelView.layoutMargins = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
    labelView.addSubview(label)
    view.addSubview(labelView)

    marginView.translatesAutoresizingMaskIntoConstraints = false
    labelView.translatesAutoresizingMaskIntoConstraints = false
    label.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      marginView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
      marginView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      marginView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      marginView.bottomAnchor.constraint(lessThanOrEqualTo: view.readableContentGuide.centerYAnchor),

      label.topAnchor.constraint(equalTo: labelView.readableContentGuide.topAnchor),
      label.leadingAnchor.constraint(equalTo: labelView.readableContentGuide.leadingAnchor),
      label.bottomAnchor.constraint(equalTo: labelView.readableContentGuide.bottomAnchor),
      label.trailingAnchor.constraint(equalTo: labelView.readableContentGuide.trailingAnchor),

      labelView.topAnchor.constraint(equalTo: marginView.bottomAnchor),
      labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      labelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      labelView.bottomAnchor.constraint(lessThanOrEqualTo: bottomLayoutGuide.topAnchor),
    ])


  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

