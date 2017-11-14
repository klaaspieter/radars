http://openradar.appspot.com/radar?id=5000759053647872 

Summary:
In iOS 11 bar button items no longer take their appearance information from the normal state. Instead not configured states fallback to system appearance.

Steps to Reproduce:
1. Change a bar button item's titleTextAttributes for the .normal state
2. Highlight/Disable the tab bar button

Expected Results:
The tab bar button to take font and color information from the normal state configuration

Actual Results:
The tab bar button falls back to default system font and color

Version:
11.0

Notes:
n.a.