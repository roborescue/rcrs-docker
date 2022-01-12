#!/bin/bash

MAP=${MAP:-kobe}
MODE=${RUN_MODE:-NO_PRECOMPUTE}
TEAM=${TEAM:-Test}
PRECOMPUTE_TIMEOUT=${PRECOMPUTE_TIMEOUT:-180}
cd scripts

case "$MODE" in
      NO_PRECOMPUTE)
        gradle run --args="-c maps/$MAP/config/kernel.cfg --gis.map.dir=maps/$MAP/map --kernel.logname=/logs/rescue.log.xz -t $TEAM"
		;;
      WITH_PRECOMPUTE)
		#sh start-precompute.sh -c ../maps/$MAP/config/kernel.cfg --gis.map.dir=../maps/$MAP/map --kernel.logname=/logs/rescue.log.xz
		#sh start-start-comprun.sh -c ../maps/$MAP/config/kernel.cfg --gis.map.dir=../maps/$MAP/map --kernel.logname=/logs/rescue.log.xz
        echo "not tested yet"
		gradle run --args="-c maps/$MAP/config/kernel.cfg --gis.map.dir=maps/$MAP/map --kernel.logname=/logs/rescue.log.xz"    &
		PID=$!
		sleep $PRECOMPUTE_TIMEOUT
		kill -9 $PID
		gradle run --args="-c maps/$MAP/config/kernel.cfg --gis.map.dir=maps/$MAP/map --kernel.logname=/logs/rescue.log.xz"    
		
		
        ;;
	  *)
        echo "Unrecognized option: $MODE"
        exit 1
        ;;
esac