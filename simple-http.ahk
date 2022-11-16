#NoEnv
#SingleInstance, Force

class SimpleHTTP {
	o := ComObjCreate("WinHttp.WinHttpRequest.5.1")

	get(url, headers := "") {
		return this._request("GET", url, "", headers)
	}

	post(url, data := "", headers := "") {
		return this._request("POST", url, data, headers)
	}

    put(url, data := "", headers := "") {
        return this._request("PUT", url, data, headers)
    }

    delete(url, headers := "") {
		return this._request("DELETE", url, "", headers)
	}

    patch(url, data := "", headers := "") {
        return this._request("PATCH", url, data, headers)
    }

    head(url, headers := "") {
		return this._request("HEAD", url, "", headers)
	}

    options(args*) {
		return this._request("OPTIONS", args*)
	}

	_request(method, url, data="", headers="") {
		this.o.Open(method, url, true)
		this._setHeaders(headers, method)
		this.o.Send(data)
		this.o.WaitForResponse()
		return this.o.ResponseText
	}
	
	_setHeaders(obj, method) {
		for k, v in obj {
			this.o.SetRequestHeader(k, v)
		}
		if (method = "POST") && !obj["Content-Type"] {
			this.o.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
		}
	}
}