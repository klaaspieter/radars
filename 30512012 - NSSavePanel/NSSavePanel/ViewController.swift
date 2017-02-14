import Cocoa

class ViewController: NSViewController {

  @IBAction private func save(_ sender: AnyObject?) {
    let savePanel = NSSavePanel()
    savePanel.allowedFileTypes = [".mov"]
    savePanel.beginSheetModal(for: view.window!) { _ in
    }
  }
}
