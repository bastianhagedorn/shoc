#!/bin/bash
cat shoc.raw | grep runtime | awk '$3 == "[DEBUG]" {print $6}' > shoc.out
