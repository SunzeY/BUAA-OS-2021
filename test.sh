#!/bin/bash
grep -nr 'hello OS lab0' ./dir >lab0.exam.c
cd dir && find -name lab0_x >>../lab0.exam.c
