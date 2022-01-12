#!/bin/bash

MODE=${RUN_MODE:-NO_PRECOMPUTE}

sh compile.sh
case "$MODE" in
      NO_PRECOMPUTE)
        sh launch.sh -all -h rcrs_server
		;;
      WITH_PRECOMPUTE)
        sh launch.sh -allp -h rcrs_server
		sleep 20
        sh launch.sh -all -h rcrs_server
	  *)
        echo "Unrecognized option: $MODE"
        exit 1
        ;;
esac