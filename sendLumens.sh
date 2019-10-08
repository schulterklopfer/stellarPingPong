#!/usr/bin/expect -f

set receiver [lindex $argv 0]

spawn keybase wallet send $receiver 1 XLM
expect "(type 'YES' to confirm): "
send -- "YES\r"
expect eof
