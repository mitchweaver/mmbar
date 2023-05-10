# mmbar

Mitch's Modular Bar for dwm on Linux/OpenBSD  
*(and other window managers that read from root window title)*

Written in POSIX sh

*Currently work in progress*

![image](https://0x0.st/-eCL.png)

## Dependencies

| Module   | Dependencies |
| -------- | ------------ |
| ssid     | `iwconfig`, `ifconfig`   |
| crypto   | `jq` |
| weather  | [weatherd](https://github.com/mitchweaver/bin/blob/master/bin/weatherd) |


## Installation

`make install`

## Running

`mmbar -d`

## Testing

Check with shellcheck:

`make test`
