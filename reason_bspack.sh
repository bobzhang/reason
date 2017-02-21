#!/bin/sh

make || true


echo "Cleaning before packing"
rm -f ../jscomp/bin/refmt_main.ml
rm -f ../jscomp/bin/reactjs_ppx.ml

echo "Packing refmt"
bspack.exe -I `menhir --suggest-menhirLib` -bs-main Refmt_impl -I _build/src -I vendor/cmdliner -I vendor/easy_format/ -I vendor/ppx_deriving/ -o ../jscomp/bin/refmt_main.ml

echo "Packing reactjs_ppx"
bspack.exe -I `menhir --suggest-menhirLib` -bs-main Reactjs_jsx_ppx -I _build/src -I vendor/cmdliner -I vendor/easy_format/ -I vendor/ppx_deriving/ -o ../jscomp/bin/reactjs_ppx.ml
