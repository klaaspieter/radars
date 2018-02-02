//
//  ViewController.swift
//  35554298 - FaceID
//
//  Created by Klaas Pieter Annema on 02/02/2018.
//  Copyright © 2018 Sokneus. All rights reserved.
//

import LocalAuthentication
import UIKit

class ViewController: UIViewController {
  let context = LAContext()

  @IBAction @objc func prompt() {
    var error: NSError?
    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
      context.evaluatePolicy(
        .deviceOwnerAuthenticationWithBiometrics,
        localizedReason: "Authenticate?",
        reply: { reply, error in
          print("reply: \(reply)")
          error.map({ print("error: \($0)")})
        }
      )
    } else {
      error.map({ print("error: \($0)")})
    }
  }
}
