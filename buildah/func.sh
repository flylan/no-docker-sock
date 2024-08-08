#!/bin/bash
# shellcheck shell=bash
set -Eeuo pipefail

has_command() {
  type $1 > /dev/null 2>&1
}