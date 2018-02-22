//
//  ViewController.swift
//  Adjusting font size of centered text field
//
//  Created by Klaas Pieter Annema on 22/02/2018.
//  Copyright © 2018 Sokneus. All rights reserved.
//

import UIKit

/*
 The `centeredTextField` and `leadingTextField` reduce their font size to the lowest allowed
 immediately after typing the first character. The `fullWidthTextField` behaves correctly, it only
 reduces the font size when there is no more space for more text.
 */
class ViewController: UIViewController {

  @IBOutlet var centeredTextField: UITextField!
  @IBOutlet var centeredIntrinsicSizeLabel: UILabel!
  @IBOutlet var centeredFontSizeLabel: UILabel!

  @IBOutlet var leadingTextField: UITextField!
  @IBOutlet var leadingIntrinsicSizeLabel: UILabel!
  @IBOutlet var leadingFontSizeLabel: UILabel!

  @IBOutlet var fullWidthTextField: UITextField!
  @IBOutlet var fullWidthIntrinsicSizeLabel: UILabel!
  @IBOutlet var fullWidthFontSizeLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    centeredTextField.delegate = self
    leadingTextField.delegate = self
    fullWidthTextField.delegate = self

    update(
      intrinsicSizeLabel: centeredIntrinsicSizeLabel,
      fontSizeLabel: centeredFontSizeLabel,
      for: centeredTextField
    )
    update(
      intrinsicSizeLabel: leadingIntrinsicSizeLabel,
      fontSizeLabel: leadingFontSizeLabel,
      for: leadingTextField
    )
    update(
      intrinsicSizeLabel: fullWidthIntrinsicSizeLabel,
      fontSizeLabel: fullWidthFontSizeLabel,
      for: fullWidthTextField
    )
  }

  func update(intrinsicSizeLabel: UILabel, fontSizeLabel: UILabel, for textField: UITextField) {
    intrinsicSizeLabel.text = NSStringFromCGSize(textField.intrinsicContentSize)

    if let font = textField.font {
      fontSizeLabel.text = "\(font.pointSize)"
    } else {
      fontSizeLabel.text = "Unknown"
    }
  }
}

extension ViewController: UITextFieldDelegate {
  func textField(
    _ textField: UITextField,
    shouldChangeCharactersIn range: NSRange,
    replacementString string: String
  ) -> Bool {

    let intrinsicSizeLabel: UILabel
    let fontSizeLabel: UILabel

    if textField == centeredTextField {
      intrinsicSizeLabel = centeredIntrinsicSizeLabel
      fontSizeLabel = centeredFontSizeLabel
    } else if textField == leadingTextField {
      intrinsicSizeLabel = leadingIntrinsicSizeLabel
      fontSizeLabel = leadingFontSizeLabel
    } else {
      intrinsicSizeLabel = fullWidthIntrinsicSizeLabel
      fontSizeLabel = fullWidthFontSizeLabel
    }

    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
      self.update(
        intrinsicSizeLabel: intrinsicSizeLabel,
        fontSizeLabel: fontSizeLabel,
        for: textField
      )
    }

    return true
  }
}

