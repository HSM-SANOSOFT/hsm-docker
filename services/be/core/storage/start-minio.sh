#!/bin/sh
set -e

exec minio server /data --console-address ":9001"
