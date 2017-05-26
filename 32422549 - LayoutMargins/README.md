https://openradar.appspot.com/radar?id=5005215921078272
 
Summary:
When layout margins are set and the view is constrained in init, the layout margins are not respected.

Steps to Reproduce:
1. Create a UIView subclass
2. Override init and set custom layout margins
3. Constrain a subview to the layout margins guides

Expected Results:
The subview to be inset according to the layout margins

Actual Results:
The subview is not inset

Version:
10

Notes:
n.a.