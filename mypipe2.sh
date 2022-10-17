#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/PyHipp_Raymond/rplparallel-slurm.sh

# second set of jobs called from the day directory
sbatch /data/src/PyHipp_Raymond/rs1-slurm.sh
sbatch /data/src/PyHipp_Raymond/rs2-slurm.sh
sbatch /data/src/PyHipp_Raymond/rs3-slurm.sh
sbatch /data/src/PyHipp_Raymond/rs4-slurm.sh
