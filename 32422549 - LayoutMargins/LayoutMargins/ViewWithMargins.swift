//
//  ViewWithMargins.swift
//  LayoutMargins
//
//  Created by Klaas Pieter Annema on 26/05/2017.
//  Copyright © 2017 Sokneus. All rights reserved.
//

import UIKit

class ViewWithMargins: UIView {
  override init(frame: CGRect) {
    let label = UILabel()
    label.text = "This label should be inset 15pt from all sides of the view, but isn't."
    label.textColor = .white
    label.numberOfLines = 0

    super.init(frame: frame)

    backgroundColor = .red
    layoutMargins = UIEdgeInsets(top: 12, left: 15, bottom: 12, right: 15)

    addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: readableContentGuide.topAnchor),
      label.leadingAnchor.constraint(equalTo: readableContentGuide.leadingAnchor),
      label.bottomAnchor.constraint(equalTo: readableContentGuide.bottomAnchor),
      label.trailingAnchor.constraint(equalTo: readableContentGuide.trailingAnchor),
    ])
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
