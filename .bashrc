# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source /opt/intel/compilers_and_libraries_2017.0.098/linux/bin/compilervars.sh intel64
source /opt/intel/compilers_and_libraries_2017.0.098/linux/mkl/bin/mklvars.sh intel64

 

# added by WIEN2k: BEGIN
# --------------------------------------------------------
alias lsi="ls -aslp *.in*"
alias lso="ls -aslp *.output*"
alias lsd="ls -aslp *.def"
alias lsc="ls -aslp *.clm*"
alias lss="ls -aslp *.scf* */*.scf"
alias lse="ls -aslp *.error"
alias LS="ls -aslp | grep /"
alias pslapw="ps -ef |grep "lapw""
alias cdw="cd /root/WIEN2k"

export OMP_NUM_THREADS=1

export LD_LIBRARY_PATH=usr/local/lib
export MKLROOT
export EDITOR="emacs"

export SCRATCH=./

WIENROOT=/root/wienroot
export WIENROOT

export W2WEB_CASE_BASEDIR=/root/WIEN2k
export STRUCTEDIT_PATH=$WIENROOT/SRC_structeditor/bin
export PDFREADER=xpdf
export PATH=$PATH:$WIENROOT:$STRUCTEDIT_PATH:$WIENROOT/SRC_IRelast/script-elastic:.
export OCTAVE_EXEC_PATH=${PATH}::
export OCTAVE_PATH=${STRUCTEDIT_PATH}::

export PATH=$PATH:$WIENROOT:.
ulimit -s unlimited
alias octave="octave -p $OCTAVE_PATH"

# --------------------------------------------------------
# added by WIEN2k: END 

# --- BERRYPI START ---
export BERRYPI_PATH=$WIENROOT/SRC_BerryPI/BerryPI
export BERRYPI_PYTHON=/usr/bin/python2.7
alias berrypi="${BERRYPI_PYTHON} ${BERRYPI_PATH}/berrypi"
# --- BERRYPI END ---
