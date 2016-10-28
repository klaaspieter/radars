https://openradar.appspot.com/radar?id=4938221075038208

Summary:
When a textfield, with a custom font, becomes first responder the text jumps up slightly. When it resign firsts responder the text again jumps down slightly.

Steps to Reproduce:
1. Create a textfield
2. Set a custom font (e.g. Papyrus, 13.0)

Expected Results:
The text not to jump when I start/stop editing

Actual Results:
The text jumps

Notes:
Some suggestions on StackOverflow said that the problem doesn’t occur when the UITextField is initialized in code. The second tab in the sample project shows that this isn’t true. The order in which the text and custom font are set also doesn’t matter.