#!/bin/bash
grep -rn 'hello OS lab0' dir >lab0_exam.c
cd dir && find -name lab0_x >>../lab0_exam.c
