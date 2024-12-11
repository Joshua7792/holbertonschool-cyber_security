#!/bin/bash
sudo ufw allow from "$1" to any port 80 proto tcp
