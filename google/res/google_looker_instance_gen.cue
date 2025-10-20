package res

import "list"

#google_looker_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_looker_instance")
	close({
		// Network name in the consumer project in the format of:
		// projects/{project}/global/networks/{network}
		// Note that the consumer network may be in a different GCP
		// project than the consumer
		// project that is hosting the Looker Instance.
		consumer_network?: string
		admin_settings?: matchN(1, [#admin_settings, list.MaxItems(1) & [...#admin_settings]])

		// The time the instance was created in RFC3339 UTC "Zulu" format,
		// accurate to nanoseconds.
		create_time?: string

		// Policy to determine if the cluster should be deleted
		// forcefully.
		// If setting deletion_policy = "FORCE", the Looker instance will
		// be deleted regardless
		// of its nested resources. If set to "DEFAULT", Looker instances
		// that still have
		// nested resources will return an error. Possible values:
		// DEFAULT, FORCE
		deletion_policy?: string

		// Public Egress IP (IPv4).
		egress_public_ip?: string

		// FIPS 140-2 Encryption enablement for Looker (Google Cloud
		// Core).
		fips_enabled?: bool

		// Gemini enablement for Looker (Google Cloud Core).
		gemini_enabled?: bool
		id?:             string

		// Private Ingress IP (IPv4).
		ingress_private_ip?: string

		// Public Ingress IP (IPv4).
		ingress_public_ip?: string

		// Looker instance URI which can be used to access the Looker
		// Instance UI.
		looker_uri?: string

		// The Looker version that the instance is using.
		looker_version?: string

		// The ID of the instance or a fully qualified identifier for the
		// instance.
		name!: string
		custom_domain?: matchN(1, [#custom_domain, list.MaxItems(1) & [...#custom_domain]])
		deny_maintenance_period?: matchN(1, [#deny_maintenance_period, list.MaxItems(1) & [...#deny_maintenance_period]])

		// Platform editions for a Looker instance. Each edition maps to a
		// set of instance features, like its size. Must be one of these
		// values:
		// - LOOKER_CORE_TRIAL: trial instance (Currently Unavailable)
		// - LOOKER_CORE_STANDARD: pay as you go standard instance
		// (Currently Unavailable)
		// - LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
		// - LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise
		// instance
		// - LOOKER_CORE_EMBED_ANNUAL: subscription embed instance
		// - LOOKER_CORE_NONPROD_STANDARD_ANNUAL: nonprod subscription
		// standard instance
		// - LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL: nonprod subscription
		// enterprise instance
		// - LOOKER_CORE_NONPROD_EMBED_ANNUAL: nonprod subscription embed
		// instance
		// - LOOKER_CORE_TRIAL_STANDARD: A standard trial edition of
		// Looker (Google Cloud core) product.
		// - LOOKER_CORE_TRIAL_ENTERPRISE: An enterprise trial edition of
		// Looker (Google Cloud core) product.
		// - LOOKER_CORE_TRIAL_EMBED: An embed trial edition of Looker
		// (Google Cloud core) product. Default value:
		// "LOOKER_CORE_TRIAL" Possible values: ["LOOKER_CORE_TRIAL",
		// "LOOKER_CORE_STANDARD", "LOOKER_CORE_STANDARD_ANNUAL",
		// "LOOKER_CORE_ENTERPRISE_ANNUAL", "LOOKER_CORE_EMBED_ANNUAL",
		// "LOOKER_CORE_NONPROD_STANDARD_ANNUAL",
		// "LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL",
		// "LOOKER_CORE_NONPROD_EMBED_ANNUAL",
		// "LOOKER_CORE_TRIAL_STANDARD", "LOOKER_CORE_TRIAL_ENTERPRISE",
		// "LOOKER_CORE_TRIAL_EMBED"]
		platform_edition?: string
		encryption_config?: matchN(1, [#encryption_config, list.MaxItems(1) & [...#encryption_config]])
		maintenance_window?: matchN(1, [#maintenance_window, list.MaxItems(1) & [...#maintenance_window]])
		oauth_config?: matchN(1, [#oauth_config, list.MaxItems(1) & [_, ...] & [...#oauth_config]])
		psc_config?: matchN(1, [#psc_config, list.MaxItems(1) & [...#psc_config]])
		timeouts?: #timeouts
		user_metadata?: matchN(1, [#user_metadata, list.MaxItems(1) & [...#user_metadata]])

		// Whether private IP is enabled on the Looker instance.
		private_ip_enabled?: bool
		project?:            string

		// Whether Public Service Connect (PSC) is enabled on the Looker
		// instance
		psc_enabled?: bool

		// Whether public IP is enabled on the Looker instance.
		public_ip_enabled?: bool

		// The name of the Looker region of the instance.
		region?: string

		// Name of a reserved IP address range within the consumer
		// network, to be used for
		// private service access connection. User may or may not specify
		// this in a request.
		reserved_range?: string

		// The time the instance was updated in RFC3339 UTC "Zulu" format,
		// accurate to nanoseconds.
		update_time?: string
	})

	#admin_settings: close({
		// Email domain allowlist for the instance.
		//
		// Define the email domains to which your users can deliver Looker
		// (Google Cloud core) content.
		// Updating this list will restart the instance. Updating the
		// allowed email domains from terraform
		// means the value provided will be considered as the entire list
		// and not an amendment to the
		// existing list of allowed email domains.
		allowed_email_domains?: [...string]
	})

	#custom_domain: close({
		// Domain name
		domain?: string

		// Status of the custom domain.
		state?: string
	})

	#deny_maintenance_period: close({
		end_date?: matchN(1, [_#defs."/$defs/deny_maintenance_period/$defs/end_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deny_maintenance_period/$defs/end_date"]])
		start_date?: matchN(1, [_#defs."/$defs/deny_maintenance_period/$defs/start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deny_maintenance_period/$defs/start_date"]])
		time?: matchN(1, [_#defs."/$defs/deny_maintenance_period/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/deny_maintenance_period/$defs/time"]])
	})

	#encryption_config: close({
		// Name of the customer managed encryption key (CMEK) in KMS.
		kms_key_name?: string

		// Full name and version of the CMEK key currently in use to
		// encrypt Looker data.
		kms_key_name_version?: string

		// Status of the customer managed encryption key (CMEK) in KMS.
		kms_key_state?: string
	})

	#maintenance_window: close({
		start_time?: matchN(1, [_#defs."/$defs/maintenance_window/$defs/start_time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_window/$defs/start_time"]])

		// Required. Day of the week for this MaintenanceWindow (in UTC).
		//
		// - MONDAY: Monday
		// - TUESDAY: Tuesday
		// - WEDNESDAY: Wednesday
		// - THURSDAY: Thursday
		// - FRIDAY: Friday
		// - SATURDAY: Saturday
		// - SUNDAY: Sunday Possible values: ["MONDAY", "TUESDAY",
		// "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day_of_week!: string
	})

	#oauth_config: close({
		// The client ID for the Oauth config.
		client_id!: string

		// The client secret for the Oauth config.
		client_secret!: string
	})

	#psc_config: close({
		service_attachments?: matchN(1, [_#defs."/$defs/psc_config/$defs/service_attachments", [..._#defs."/$defs/psc_config/$defs/service_attachments"]])

		// List of VPCs that are allowed ingress into the Looker instance.
		allowed_vpcs?: [...string]

		// URI of the Looker service attachment.
		looker_service_attachment_uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user_metadata: close({
		// Number of additional Developer Users to allocate to the Looker
		// Instance.
		additional_developer_user_count?: number

		// Number of additional Standard Users to allocate to the Looker
		// Instance.
		additional_standard_user_count?: number

		// Number of additional Viewer Users to allocate to the Looker
		// Instance.
		additional_viewer_user_count?: number
	})

	_#defs: "/$defs/deny_maintenance_period/$defs/end_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0
		// to specify a year by itself or a year and month where the day
		// isn't significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a
		// month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without
		// a year.
		year?: number
	})

	_#defs: "/$defs/deny_maintenance_period/$defs/start_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month, or 0
		// to specify a year by itself or a year and month where the day
		// isn't significant.
		day?: number

		// Month of a year. Must be from 1 to 12, or 0 to specify a year
		// without a
		// month and day.
		month?: number

		// Year of the date. Must be from 1 to 9999, or 0 to specify a
		// date without
		// a year.
		year?: number
	})

	_#defs: "/$defs/deny_maintenance_period/$defs/time": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		seconds?: number
	})

	_#defs: "/$defs/maintenance_window/$defs/start_time": close({
		// Hours of day in 24 hour format. Should be from 0 to 23.
		hours?: number

		// Minutes of hour of day. Must be from 0 to 59.
		minutes?: number

		// Fractions of seconds in nanoseconds. Must be from 0 to
		// 999,999,999.
		nanos?: number

		// Seconds of minutes of the time. Must normally be from 0 to 59.
		seconds?: number
	})

	_#defs: "/$defs/psc_config/$defs/service_attachments": close({
		// Status of the service attachment connection.
		connection_status?: string

		// Fully qualified domain name that will be used in the private
		// DNS record created for the service attachment.
		local_fqdn?: string

		// URI of the service attachment to connect to.
		target_service_attachment_uri?: string
	})
}
