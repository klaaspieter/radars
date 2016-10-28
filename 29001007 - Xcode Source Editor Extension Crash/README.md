https://openradar.appspot.com/radar?id=4972862536417280

Summary:
Xcode crashes when replacing buffer in a source editor extension.

Steps to Reproduce:
In an editor extension set `invocation.buffer.completeBuffer = ""`


Expected Results:
The buffer to be empty


Actual Results:
Xcode crashes


Version:
8.1

Notes:
The crasher seems to happen when setting completeBuffer. This also crashes:

    let newBuffer = invocation.buffer.completeBuffer
    invocation.buffer.completeBuffer = newBuffer

Whereas removing all lines works as expected:

    invocation.buffer.lines.removeAllObjects()

Sample project and crash report attached