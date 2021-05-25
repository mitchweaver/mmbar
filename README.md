# mmbar

Mitch's Modular Bar for dwm on Linux/OpenBSD  
*(and other window managers that read from root window title)*

Written in POSIX sh

## Dependencies

| Module   | Dependencies |
| -------- | ------------ |
| ssid     | `iwconfig`, `ifconfig`   |
| crypto   | `jq` |
| weather  | `curl` |


## Installation

`make install`

## Running

`mmbar -d`

## Testing

Check with shellcheck:

`make test`
