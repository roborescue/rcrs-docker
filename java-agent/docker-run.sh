#!/bin/bash

MODE=${RUN_MODE:-NO_PRECOMPUTE}

sh compile.sh
case "$MODE" in
      NO_PRECOMPUTE)
        sh launch.sh -all
		;;
      PRECOMPUTE)
        sh launch.sh -allp
        sh launch.sh -all
	  *)
        echo "Unrecognized option: $MODE"
        exit 1
        ;;
esac