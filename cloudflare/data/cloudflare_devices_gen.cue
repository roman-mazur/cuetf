package data

#cloudflare_devices: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_devices")
	account_id!: string
	devices?: [...{
		created?:            string
		deleted?:            bool
		device_type?:        string
		id?:                 string
		ip?:                 string
		key?:                string
		last_seen?:          string
		mac_address?:        string
		manufacturer?:       string
		model?:              string
		name?:               string
		os_distro_name?:     string
		os_distro_revision?: string
		os_version?:         string
		os_version_extra?:   string
		revoked_at?:         string
		serial_number?:      string
		updated?:            string
		user_email?:         string
		user_id?:            string
		user_name?:          string
		version?:            string
	}]
	id?: string
}
