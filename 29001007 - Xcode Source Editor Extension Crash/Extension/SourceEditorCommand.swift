//
//  SourceEditorCommand.swift
//  Extension
//
//  Created by Klaas Pieter Annema on 28/10/2016.
//  Copyright © 2016 annema. All rights reserved.
//

import Foundation
import XcodeKit

class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
  func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {

    // Crash
    invocation.buffer.completeBuffer = ""

    // Also Crash
//    let newBuffer = invocation.buffer.completeBuffer
//    invocation.buffer.completeBuffer = newBuffer

    // Works
//    invocation.buffer.lines.removeAllObjects()

    completionHandler(nil)
  }

}
