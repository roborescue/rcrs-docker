#!/bin/bash

MODE=${RUN_MODE:-NO_PRECOMPUTE}

case "$MODE" in
      NO_PRECOMPUTE)
        sh launch.sh -all
		;;
      WITH_PRECOMPUTE)
        sh launch.sh -allp
        sh launch.sh -all
	  *)
        echo "Unrecognized option: $MODE"
        exit 1
        ;;
esac