{ writeScriptBin, go-jsonnet }:

writeScriptBin "jsonnet-lint" ''#!/usr/bin/env bash
  for file in "$@"; do
    ${go-jsonnet}/bin/jsonnet-lint $file
  done
''
