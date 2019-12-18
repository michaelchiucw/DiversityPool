#!/bin/bash

# Author: Chun Wai Chiu
# generateDataStream.sh
# Data streams used in the experiment of the paper:
# CHIU, C.W.; MINKU, L.L. . "Diversity-Based Pool of Models for Dealing with Recurring Concepts", IEEE International Joint Conference on Neural Networks, p. 2759-2766, July 2018.

# Preliminary parameter tunning data stream - Agrawal
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b)
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 5 -p 0.0 -b)
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 2 -p 0.0 -b) 
					-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 5 -p 0.0 -b) 
						-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 7 -p 0.0 -b) 
							-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 8 -p 0.0 -b) 
								-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
									-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b)
										-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b)
											-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b)
												-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 5 -p 0.0 -b)
													-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 9 -p 0.0 -b)
														-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 4 -p 0.0 -b) -d (generators.AgrawalGenerator -f 2 -p 0.0 -b) -p 200000 -w 6899)
													-p 200000 -w 16615)
												-p 200000 -w 2868)
											-p 200000 -w 18547)
										-p 200000 -w 4247)
									-p 200000 -w 4318)
								-p 200000 -w 9543)
							-p 200000 -w 16364)
						 -p 200000 -w 3694)
					-p 200000 -w 15706)
				-p 200000 -w 5782)
			-p 200000 -w 17312)
		-p 200000 -w 8587)
	-p 200000 -w 14580) 
-f /home/c/cwc13/Desktop/dataStreams/stream_pre_Agrawal.arff -m 3000000" &

# Preliminary parameter tunning data stream - SEA
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa-2017.10-SNAPSHOT.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.SEAGenerator -f 2 -p 0 -b)
		-d (ConceptDriftStream -s (generators.SEAGenerator -f 4 -p 0 -b) 
			-d (ConceptDriftStream -s (generators.SEAGenerator -p 0 -b)
				-d (ConceptDriftStream -s (generators.SEAGenerator -f 5 -p 0 -b) 
					-d (ConceptDriftStream -s (generators.SEAGenerator -p 0 -b) 
						-d (ConceptDriftStream -s (generators.SEAGenerator -f 5 -p 0 -b) 
							-d (ConceptDriftStream -s (generators.SEAGenerator -p 0 -b)
								-d (ConceptDriftStream -s (generators.SEAGenerator -f 3 -p 0 -b) 
									-d (ConceptDriftStream -s (generators.SEAGenerator -f 2 -p 0 -b) -d (generators.SEAGenerator -f 5 -p 0 -b) -p 200000 -w 9058)
								-p 200000 -w 4707)
							-p 200000 -w 11444)
						 -p 200000 -w 13704)
					-p 200000 -w 9122)
				-p 200000 -w 388)
			-p 200000 -w 1123)
		-p 200000 -w 1816)
	-p 200000 -w 4294) 
-f /home/c/cwc13/Desktop/dataStreams/stream_pre_SEA.arff -m 2000000" &


# Stream 1
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 2 -p 0.0 -b)
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 5 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b)
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b) 
					-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
						-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 4 -p 0.0 -b)
							-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b)
								-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 4 -p 0.0 -b) 
									-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) -d (generators.AgrawalGenerator -f 4 -p 0.0 -b) -p 200000 -w 20000)
								-p 200000 -w 20000)
							-p 200000 -w 20000)
						 -p 200000 -w 20000)
					-p 200000 -w 20000)
				-p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream1.arff -m 2000000" &

# Stream 2
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 2 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b) -d (generators.AgrawalGenerator -p 0.0 -b) -p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream2.arff -m 1000000" &

# Stream 3
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 2 -p 0.0 -b)  
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b) 
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b) -d (generators.AgrawalGenerator -f 2 -p 0.0 -b) -p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream3.arff -m 1000000" & 

# Stream 4
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 4 -p 0.0 -b)  
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 2 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b) -d (generators.AgrawalGenerator -f 4 -p 0.0 -b) -p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream4.arff -m 1000000" &

# Stream 5
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 6 -p 0.0 -b) 
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 5 -p 0.0 -b) -d (generators.AgrawalGenerator -f 4 -p 0.0 -b) -p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream5.arff -m 1000000" &

# Stream 6
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 9 -p 0.0 -b)
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 8 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 10 -p 0.0 -b)
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 7 -p 0.0 -b) 
					-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 8 -p 0.0 -b)
						-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 7 -p 0.0 -b) 
							-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 8 -p 0.0 -b) -d (generators.AgrawalGenerator -f 7 -p 0.0 -b) -p 200000 -w 1)
						-p 200000 -w 1)
					-p 200000 -w 1)
				-p 200000 -w 1)
			-p 200000 -w 1)
		-p 200000 -w 1)
	-p 200000 -w 1) 
-f /home/c/cwc13/Desktop/dataStreams/stream6.arff -m 1600000" &

# Stream 7
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 7 -p 0.0 -b)
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 8 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 9 -p 0.0 -b) -d (generators.AgrawalGenerator -f 10 -p 0.0 -b) -p 200000 -w 1)
		-p 200000 -w 1)
	-p 200000 -w 1) 
-f /home/c/cwc13/Desktop/dataStreams/stream7.arff -m 800000" &

# Stream 8
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -f 2 -p 0.0 -b)
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 5 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 4 -p 0.0 -b) -d (generators.AgrawalGenerator -f 6 -p 0.0 -b) -p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream8.arff -m 800000" &

# Stream 9
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.AgrawalGenerator -p 0.0 -b) 
		-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 8 -p 0.0 -b) 
			-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 3 -p 0.0 -b) 
				-d (ConceptDriftStream -s (generators.AgrawalGenerator -f 10 -p 0.0 -b) -d (generators.AgrawalGenerator -f 9 -p 0.0 -b) -p 200000 -w 1)
			-p 200000 -w 1)
		-p 200000 -w 1)
	-p 200000 -w 1) 
-f /home/c/cwc13/Desktop/dataStreams/stream9.arff -m 1000000" &

#=========================================SEA======================================

# Stream 10
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa-2017.10-SNAPSHOT.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.SEAGenerator -f 3 -p 0 -b) 
		-d (ConceptDriftStream -s (generators.SEAGenerator -p 0 -b) 
			-d (ConceptDriftStream -s (generators.SEAGenerator -f 2 -p 0 -b) 
				-d (ConceptDriftStream -s (generators.SEAGenerator -f 4 -p 0 -b) -d (generators.SEAGenerator -f 3 -p 0 -b) -p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream10.arff -m 1000000" &

# Stream 11
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa-2017.10-SNAPSHOT.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.SEAGenerator -f 5 -p 0 -b) 
		-d (ConceptDriftStream -s (generators.SEAGenerator -f 3 -p 0 -b) 
			-d (ConceptDriftStream -s (generators.SEAGenerator -p 0 -b) 
				-d (ConceptDriftStream -s (generators.SEAGenerator -f 2 -p 0 -b) -d (generators.SEAGenerator -f 4 -p 0 -b) -p 200000 -w 20000)
			-p 200000 -w 20000)
		-p 200000 -w 20000)
	-p 200000 -w 20000) 
-f /home/c/cwc13/Desktop/dataStreams/stream11.arff -m 1000000" &

# Stream 12
java -cp /home/c/cwc13/Desktop/moa-release-2017.06b/moa-2017.10-SNAPSHOT.jar moa.DoTask \
"WriteStreamToARFFFile -s 
	(ConceptDriftStream -s (generators.SEAGenerator -f 5 -p 0 -b) 
		-d (ConceptDriftStream -s (generators.SEAGenerator -p 0 -b) 
			-d (ConceptDriftStream -s (generators.SEAGenerator -f 4 -p 0 -b) 
				-d (ConceptDriftStream -s (generators.SEAGenerator -f 3 -p 0 -b) -d (generators.SEAGenerator -f 2 -p 0 -b) -p 200000 -w 1)
			-p 200000 -w 1)
		-p 200000 -w 1)
	-p 200000 -w 1) 
-f /home/c/cwc13/Desktop/dataStreams/stream12.arff -m 1000000"

wait
exit 0
