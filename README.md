# Simple HTTP for AutoHotkey

A simple http interface for AutoHotkey.

## Installation

The recommended approach for installation is to use [ahkpm][].

`ahkpm install gh:joshuacc/simple-http`

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
