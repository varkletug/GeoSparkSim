#!/bin/bash
sparkcommand="../../../spark-2.3.2-bin-hadoop2.6/bin/spark-submit --master spark://en4119507l.cidse.dhcp.asu.edu:7077 --class com.zishanfu.vistrips.App /hdd2/code/zishanfu/GeoSparkSim/target/VisTrips_v1-0.0.1-SNAPSHOT-jar-with-dependencies.jar"
checksize="../../../hadoop-2.6.5/bin/hadoop fs -du -s -h /vistrips/reports_*"

hdfs_path="hdfs://en4119507l.cidse.dhcp.asu.edu:54310"
osm_path="/hdd2/code/zishanfu/map.osm"

sleepinterval=60

number=300000
timestamp=1
simulation=10
partition=5
cores=80

echo "Spark cores "$cores" #####################################"

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

cores=100
echo "Spark cores "$cores" #####################################"

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

cores=120
echo "Spark cores "$cores" #####################################"

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh

$sparkcommand $number $timestamp $simulation $partition $hdfs_path $osm_path $cores
$checksize
sleep $sleepinterval

sh restart-spark.sh