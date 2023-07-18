#!/usr/bin/env bashio
# ==============================================================================
# Home Assistant Community Add-on: cAdvisor
# Runs the cAdvisor
# ==============================================================================
#
# WHAT IS THIS FILE?!
#
# The cAdvisor add-on runs in the host PID namespace, therefore it cannot
# use the regular S6-Overlay; hence this add-on uses a "old school" script
# to run; with a couple of "hacks" to make it work.
# ==============================================================================
/etc/cont-init.d/cadvisor.sh

# Start cAdvisor
exec /etc/services.d/cadvisor/run
