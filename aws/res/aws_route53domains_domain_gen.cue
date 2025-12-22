package res

#aws_route53domains_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53domains_domain")
	close({
		abuse_contact_email?: string
		abuse_contact_phone?: string
		admin_privacy?:       bool
		auto_renew?:          bool
		admin_contact?: matchN(1, [#admin_contact, [...#admin_contact]])
		billing_contact?: [...close({
			address_line_1?: string
			address_line_2?: string
			city?:           string
			contact_type?:   string
			country_code?:   string
			email?:          string
			extra_param?: [...close({
				name?:  string
				value?: string
			})]
			fax?:               string
			first_name?:        string
			last_name?:         string
			organization_name?: string
			phone_number?:      string
			state?:             string
			zip_code?:          string
		})]
		billing_privacy?:   bool
		creation_date?:     string
		domain_name!:       string
		duration_in_years?: number
		expiration_date?:   string
		hosted_zone_id?:    string
		registrant_contact?: matchN(1, [#registrant_contact, [...#registrant_contact]])
		tech_contact?: matchN(1, [#tech_contact, [...#tech_contact]])
		name_server?: [...close({
			glue_ips?: [...string]
			name?: string
		})]
		registrant_privacy?: bool
		registrar_name?:     string
		registrar_url?:      string
		status_list?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		tech_privacy?:  bool
		transfer_lock?: bool
		updated_date?:  string
		whois_server?:  string
		timeouts?:      #timeouts
	})

	#admin_contact: close({
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		fax?:            string
		first_name?:     string
		extra_param?: matchN(1, [_#defs."/$defs/admin_contact/$defs/extra_param", [..._#defs."/$defs/admin_contact/$defs/extra_param"]])
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	})

	#registrant_contact: close({
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		fax?:            string
		first_name?:     string
		extra_param?: matchN(1, [_#defs."/$defs/registrant_contact/$defs/extra_param", [..._#defs."/$defs/registrant_contact/$defs/extra_param"]])
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	})

	#tech_contact: close({
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		fax?:            string
		first_name?:     string
		extra_param?: matchN(1, [_#defs."/$defs/tech_contact/$defs/extra_param", [..._#defs."/$defs/tech_contact/$defs/extra_param"]])
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/admin_contact/$defs/extra_param": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/registrant_contact/$defs/extra_param": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/tech_contact/$defs/extra_param": close({
		name!:  string
		value!: string
	})
}
