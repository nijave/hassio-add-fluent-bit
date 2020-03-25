# Fluent-Bit log shipper for Hass.io
This add-on ships logs from hass.io homeassistant installation to a http output (logstash). The http output is responsible for any parsing/processing/transforming. Progress is tracked to prevent duplicate entries

## Permissions
Hass.io doesn't have functionality to expose `/run/log/journal` to an add-on so this add-on runs a highly privileged wrapper that launches the fluent-bit container with the correct directory mounted in (by talking to Docker directly)
