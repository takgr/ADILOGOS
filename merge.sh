#!/bin/bash
DATE=$(date +%d-%m-%Y)
DIR="/root/ADILOG"
cat $DIR/wsjtx_log.Yaesu-950.adi $DIR/wsjtx_log.ft450.adi $DIR/wsjtx_log.kenwood-480.adi |sort -k6 |uniq >> $DIR/wsjtx_log.ola.adi
sort -k6 $DIR/wsjtx_log.ola.adi |uniq > $DIR/wsjtx_log.ola.adi1 ; mv $DIR/wsjtx_log.ola.adi1 $DIR/wsjtx_log.ola.adi
