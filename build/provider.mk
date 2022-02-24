# Service provider for local development

VALID_IMAGE_DEPLOYMENT_PROFILES += local

ifeq ($(IMAGE_DEPLOYMENT_PROFILE),local)

CONTROLLER_ADDR := "ssl:dummy_cloud_redirector.invalid:443"
IMAGE_PROFILE_SUFFIX := "$(IMAGE_DEPLOYMENT_PROFILE)"

# BACKHAUL_PASS and BACKHAUL_SSID variables are required for generating the
# pre-populated WiFi related OVSDB entries needed for extender devices.
# (See also: core/ovsdb/20_kconfig.radio.json.sh)

export BACKHAUL_SSID := "dummy_onboard_ssid"
export BACKHAUL_PASS := "dummy_onboard_psk"

endif
