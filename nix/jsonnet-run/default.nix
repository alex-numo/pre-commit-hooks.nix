{ writeScriptBin, go-jsonnet }:

writeScriptBin "jsonnet-fmt" ''#!/usr/bin/env bash
  for file in \"$@\"; do
    ${go-jsonnet}/bin/jsonnet -- $file
  done
''
