#!/bin/bash
cd /app && find features -iname '*.feature' | parallel --gnu -j5 --group php /app/bin/behat
