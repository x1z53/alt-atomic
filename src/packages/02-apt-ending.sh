#!/bin/bash

apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* && mkdir /var/lib/apt/lists/partial
