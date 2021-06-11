{ writeScriptBin, go-jsonnet }:

writeScriptBin "jsonnet-fmt" ''#!/usr/bin/env bash
  ${go-jsonnet}/bin/jsonnetfmt --in-place --test
''
