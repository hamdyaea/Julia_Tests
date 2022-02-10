#!/usr/bin/env julia

using JSON
using HTTP

r = HTTP.request("GET", "http://api.open-notify.org/astros.json")
s = String(r.body)
request_json = JSON.Parser.parse(s)
for i in request_json["people"]
    JSON.print(i["name"])
    JSON.print(i["craft"])
    println("\n\n")
end
