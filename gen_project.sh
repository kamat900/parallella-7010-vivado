#!/bin/sh

if hash vivado 2> /dev/null ; then
    echo ''
else
    cat <<EOF
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!! No Vivado installation found
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  Please source appropriate 'settings' shell file for your installation

  Example:
     source /opt/Xilinx/Vivado/2014.3.1/settings64.sh

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
EOF


    exit 1
fi

if vivado -mode batch -source build_7010.tcl ; then
    echo "Generated Vivado project"
    echo "Now open project in Vivado and generate bitstream"
else
    echo "Something went wrong it seems"
fi
