#!/usr/bin/expect -f

set receiver [lindex $argv 0]
set message [lindex $argv 1]

spawn keybase wallet send $receiver 1 XLM -m "$message"
expect "(type 'YES' to confirm): "
send -- "YES\r"
expect eof
