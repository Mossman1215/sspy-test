#!/bin/bash
docker run -v sspytest_assets:/sspy/public/assets sspy:latest wget -O /sspy/public/assets/sspy.sspak https://s3-ap-southeast-2.amazonaws.com/ss-packages/sspy.sspak
docker run --network=sspytest_default -v sspytest_assets:/sspy/public/assets sspy:latest python main.py load --file=/sspy/public/assets/sspy.sspak
