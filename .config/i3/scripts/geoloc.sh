#!/bin/bash
geoloc=`whereami -f json|tr ":,}" " "|awk '{print $2":"$4}'`
redshift -l $geoloc|awk '{print $2}'
