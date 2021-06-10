# go-sleep

```sh
$ go build
$ ./go-sleep
fish: Job 3, './go-sleep' terminated by signal SIGTERM (Polite quit request)

# Another Terminal
$ ps aux | grep go-sleep
kmdkuk           25149   0.0  0.0  4399456    792 s003  S+    2:59PM   0:00.00 grep --color=auto go-sleep
kmdkuk           24348   0.0  0.0  4972780   1780 s002  S+    2:59PM   0:00.00 ./go-sleep

$ kill 24348

$ ps aux | grep go-sleep
kmdkuk           25697   0.0  0.0  4399456    792 s003  S+    2:59PM   0:00.00 grep --color=auto go-sleep
```
