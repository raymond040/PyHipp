#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/PyHipp_Raymond/rplparallel-slurm.sh

# second job - no dependencies, called from the day directory
jid2=$(sbatch /data/src/PyHipp_Raymond/rse-slurm.sh)

# third set of jobs - depends on rse-slurm.sh, called from the day directory
jid3=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp_Raymond/rs1a-slurm.sh)
jid4=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp_Raymond/rs2a-slurm.sh)
jid5=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp_Raymond/rs3a-slurm.sh)
jid6=$(sbatch --dependency=afterok:${jid2##* } /data/src/PyHipp_Raymond/rs4a-slurm.sh)
