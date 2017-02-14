https://openradar.appspot.com/radar?id=4974589918576640

Area:
Performance (slow, hung)

Summary:
Showing an NSSavePanel where allowedFileTypes contain leading dots hangs the app when the app is sandboxed. For example the following hangs:

    let savePanel = NSSavePanel()
    savePanel.allowedFileTypes = [".mov"]
    savePanel.beginSheetModal(for: view.window!) { _ in
    }

It logs:

__54-[NSVBSavePanel advanceToRunPhaseIfNeededLayerCentric]_block_invoke : Could not advance an Open/Save panel to run phase due to error: Error Domain=com.apple.ViewBridge Code=16 "(null)" UserInfo={com.apple.ViewBridge.error.hint=advance to run phase, com.apple.ViewBridge.error.description=NSViewBridgeServiceInvalidError}

Steps to Reproduce:
1. Initialize a NSSavePanel
2. Set allowedFileTypes = [".mov"]
3. Show the save panel

Expected Results:
The same behavior as if allowedFileTypes ["mov"] was specified. Alternatively, in Swift, a type safe way to provide allowedFileTypes.

Actual Results:
The app hangs

Version:
10.12.3

Notes:


Configuration:
This happens for sandboxed apps that have the com.apple.security.files.user-selected.read-write entitlement

Attachments:
'NSSavePanel.zip' was successfully uploaded.