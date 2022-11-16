# Simple HTTP for AutoHotkey

A simple http interface for AutoHotkey.

## Installation

The recommended approach for installation is to use [ahkpm][].

1. To install: `ahkpm install gh:joshuacc/simple-http`
2. To add the `Include` statement to the top of your script:
   `ahkpm include gh:joshuacc/simple-http --file my-script.ahk`

## Usage

```autohotkey
; Import the SimpleHTTP class
#Include, %A_ScriptDir%\ahkpm-modules\github.com\joshuacc\simple-http\simple-http.ahk

; Create a new instance
http := new SimpleHTTP()

; Send a GET request
http.get("https://api.github.com/users/joshuacc")

; Send a POST request with data
http.POST("https://example.com", "myexample=pretty-cool")
```

[ahkpm]:https://ahkpm.dev