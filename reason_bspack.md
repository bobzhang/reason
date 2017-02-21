

# Prerequisite for dev build 
- `bspack.exe` is in `PATH`
- `menhir` is installed  and in `PATH`

# Dev build 
Run `./reason_bspack.sh`
Frst run `make` to make sure files are indeed generated


# Caveats

Currently, I disabled `ppx_deriving_show` since it is still experimental and pulling
 in yet another dependency via `Result` module