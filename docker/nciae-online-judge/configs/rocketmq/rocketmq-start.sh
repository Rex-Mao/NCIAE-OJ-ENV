#!/bin/bash

/bin/bash mqnamesrv
/bin/bash mqbroker -n namesrv:9876 -c ../conf/broker.conf
