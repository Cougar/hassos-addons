#!/usr/bin/env bashio
# ==============================================================================
# Home Assistant Community Add-on: cAdvisor
# Configures cAdvisor
# ==============================================================================
bashio::require.unprotected
echo "${SUPERVISOR_TOKEN}" > '/run/home-assistant.token'
