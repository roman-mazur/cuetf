package data

#cloudflare_zero_trust_device_posture_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_device_posture_rule")
	close({
		// The description of the device posture rule.
		description?: string
		account_id!:  string

		// Sets the expiration time for a posture check result. If empty,
		// the result remains valid until it is overwritten by new data
		// from the WARP client.
		expiration?: string

		// API UUID.
		id?: string

		// The value to be checked against.
		input?: close({
			// The Number of active threats.
			active_threats?: number

			// UUID of Cloudflare managed certificate.
			certificate_id?: string

			// List of volume names to be checked for encryption.
			check_disks?: [...string]

			// Confirm the certificate was not imported from another device.
			// We recommend keeping this enabled unless the certificate was
			// deployed without a private key.
			check_private_key?: bool

			// Common Name that is protected by the certificate.
			cn?: string

			// Compliance Status.
			// Available values: "compliant", "noncompliant", "unknown",
			// "notapplicable", "ingraceperiod", "error".
			compliance_status?: string

			// Posture Integration ID.
			connection_id?: string

			// Count Operator.
			// Available values: "<", "<=", ">", ">=", "==".
			count_operator?: string

			// Domain.
			domain?: string

			// For more details on eid last seen, refer to the Tanium
			// documentation.
			eid_last_seen?: string

			// Enabled.
			enabled?: bool

			// Whether or not file exists.
			exists?: bool

			// List of values indicating purposes for which the certificate
			// public key can be used.
			extended_key_usage?: [...string]

			// List ID.
			id?: string

			// Whether device is infected.
			infected?: bool

			// Whether device is active.
			is_active?: bool

			// The Number of Issues.
			issue_count?: string

			// For more details on last seen, please refer to the Crowdstrike
			// documentation.
			last_seen?: string

			// Network status of device.
			// Available values: "connected", "disconnected", "disconnecting",
			// "connecting".
			network_status?: string

			// Operating system.
			// Available values: "windows", "linux", "mac", "android", "ios",
			// "chromeos".
			operating_system?: string

			// Agent operational state.
			// Available values: "na", "partially_disabled",
			// "auto_fully_disabled", "fully_disabled",
			// "auto_partially_disabled", "disabled_error", "db_corruption".
			operational_state?: string

			// Operator.
			// Available values: "<", "<=", ">", ">=", "==".
			operator?: string

			// Os Version.
			os?: string

			// Operating System Distribution Name (linux only).
			os_distro_name?: string

			// Version of OS Distribution (linux only).
			os_distro_revision?: string

			// Additional version data. For Mac or iOS, the Product Version
			// Extra. For Linux, the kernel release version. (Mac, iOS, and
			// Linux only).
			os_version_extra?: string

			// Overall.
			overall?: string

			// File path.
			path?: string

			// Whether to check all disks for encryption.
			require_all?: bool

			// For more details on risk level, refer to the Tanium
			// documentation.
			// Available values: "low", "medium", "high", "critical".
			risk_level?: string

			// A value between 0-100 assigned to devices set by the 3rd party
			// posture provider.
			score?: number

			// Score Operator.
			// Available values: "<", "<=", ">", ">=", "==".
			score_operator?: string

			// SensorConfig.
			sensor_config?: string

			// SHA-256.
			sha256?: string

			// For more details on state, please refer to the Crowdstrike
			// documentation.
			// Available values: "online", "offline", "unknown".
			state?: string

			// List of certificate Subject Alternative Names.
			subject_alternative_names?: [...string]

			// Signing certificate thumbprint.
			thumbprint?: string

			// For more details on total score, refer to the Tanium
			// documentation.
			total_score?: number

			// Version of OS.
			version?: string

			// Version Operator.
			// Available values: "<", "<=", ">", ">=", "==".
			version_operator?: string
			locations?: close({
				// List of paths to check for client certificate on linux.
				paths?: [...string]

				// List of trust stores to check for client certificate.
				trust_stores?: [...string]
			})
		})

		// The conditions that the client must match to run the rule.
		match?: matchN(1, [close({
			// Available values: "windows", "mac", "linux", "android", "ios",
			// "chromeos".
			platform?: string
		}), [...close({
			// Available values: "windows", "mac", "linux", "android", "ios",
			// "chromeos".
			platform?: string
		})]])

		// The name of the device posture rule.
		name?: string

		// API UUID.
		rule_id?: string

		// Polling frequency for the WARP client posture check. Default:
		// `5m` (poll every five minutes). Minimum: `1m`.
		schedule?: string

		// The type of device posture rule.
		// Available values: "file", "application", "tanium", "gateway",
		// "warp", "disk_encryption", "serial_number", "sentinelone",
		// "carbonblack", "firewall", "os_version", "domain_joined",
		// "client_certificate", "client_certificate_v2",
		// "unique_client_id", "kolide", "tanium_s2s", "crowdstrike_s2s",
		// "intune", "workspace_one", "sentinelone_s2s", "custom_s2s".
		type?: string
	})
}
