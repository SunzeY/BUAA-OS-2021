#!/bin/bash
find -name xfile | xargs sed 's/char/int/g'  >output
