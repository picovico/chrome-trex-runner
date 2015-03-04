#!/bin/bash

b64=$(base64 -w 0 'head_runner.png')

var=$( cat <<EOT
var head_runner = "${b64}";
document.getElementById("1x-trex").setAttribute("src", "data:image/png;base64," + head_runner);
var _body = document.getElementsByTagName("body")[0];
_body.style.backgroundColor = "skyblue";

var _rc = document.getElementsByClassName("runner-container")[0];

_rc.style.top = "400px";

EOT
)

echo $var > head_runner.js

