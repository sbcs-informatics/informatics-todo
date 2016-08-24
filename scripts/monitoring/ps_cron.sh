#!/bin/bash
filename_ps="/data/SBCS-Informatics/monitoring/`hostname`_monitoring.txt"
date +"%m_%d_%Y_%H-%M" >> $filename_ps
ps aux | awk '{if ($1!="root" && $3$4$10!="0.00.00:00") print $0}' >> $filename_ps

