A very tiny terminal emulator built for [Hack Club SHRINK](https://shrink.hackclub.com/).

It runs entirely from a `data:text/html,...` URL and stays under the 3 KiB limit.

## Features

- Tiny Linux-style shell (with about 8 commands)
- `kfetch` system info screen
- Basic commands like:
  - `help`
  - `clear`
  - `echo`
  - `id`
  - `kfetch`
  - `ls`
  - `pwd`
- very low permission filesystem behavior
- Web Audio API sound effects
- A very important hidden feature

> Whatever you do, do **not** run:
>
> `sudo rm -rf /`

## How it works

The readable source code lives in `index.html`.

`build.sh`:
- strips unnecessary whitespace
- Keeps JS line breaks safe
- escapes characters needed for a data URI
- generates the final one-line app in `out.txt`
- checks the result against SHRINK's 3072-byte limit

## USAGE
> do not modify the uri directly and use the build.sh tool included

1. Download the files
2. modify index.html
3. run the build script
4. copy the link from out.txt
