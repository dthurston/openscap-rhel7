#!/bin/bash
yum install openscap-utils
yum install scap-security-guide

# rpm -ql scap-security-guide

#List your profiles available
oscap info "/usr/share/xml/scap/ssg/content/ssg-rhel7-xccdf.xml" 

#Run a scan using the "common" profile and send results to results.xml
oscap xccdf eval --profile common --results results.xml --cpe /usr/share/xml/scap/ssg/content/ssg-rhel7-cpe-dictionary.xml /usr/share/xml/scap/ssg/content/ssg-rhel7-xccdf.xml 

