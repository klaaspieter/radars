https://openradar.appspot.com/radar?id=5043493776916480

Summary:
When a UITextField doesn't have required “equalTo” leading and trailing constraints it will prefer resizing it's font size before increasing it's bounds.

Steps to Reproduce:
Add a `UITextField` with `adjustsFontSizeToFitWidth = true`
Constrain it to a leading or centerX anchor
Type some text in the textfield


Expected Results:
The textfield to increase it's bounds

Actual Results:
The textfield reduces font size to the minimal allowed then increases it's bounds.

Version:
11.2

Notes: