#!/bin/bash
helm uninstall timescaledb -n hypercloud5-system
kubectl -n hypercloud5-system delete cm custom-init-config  
kubectl -n hypercloud5-system delete svc timescaledb-config
kubectl -n hypercloud5-system delete pvc storage-volume-timescaledb-0 storage-volume-timescaledb-1 storage-volume-timescaledb-2 wal-volume-timescaledb-0 wal-volume-timescaledb-1 wal-volume-timescaledb-2
