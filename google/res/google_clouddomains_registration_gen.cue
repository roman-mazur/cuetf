package res

import "list"

#google_clouddomains_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_clouddomains_registration")
	close({
		// The list of contact notices that the caller acknowledges.
		// Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT
		contact_notices?: [...string]

		// Output only. Time at which the automation was created.
		create_time?: string

		// Required. The domain name. Unicode domain names must be
		// expressed in Punycode format.
		domain_name!: string

		// The list of domain notices that you acknowledge. Possible value
		// is HSTS_PRELOADED
		domain_notices?: [...string]

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Output only. Time at which the automation was updated.
		expire_time?: string

		// Output only. The set of issues with the Registration that
		// require attention.
		issues?: [...string]
		id?: string

		// Set of labels associated with the Registration.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location for the resource
		location!: string

		// Output only. Name of the Registration resource, in the format
		// projects/*/locations/*/registrations/<domain_name>.
		name?: string

		// Output only. The reason the domain registration failed. Only
		// set for domains in REGISTRATION_FAILED state.
		register_failure_reason?: string
		contact_settings?: matchN(1, [#contact_settings, list.MaxItems(1) & [_, ...] & [...#contact_settings]])
		dns_settings?: matchN(1, [#dns_settings, list.MaxItems(1) & [...#dns_settings]])
		management_settings?: matchN(1, [#management_settings, list.MaxItems(1) & [...#management_settings]])
		timeouts?: #timeouts
		yearly_price?: matchN(1, [#yearly_price, list.MaxItems(1) & [_, ...] & [...#yearly_price]])
		project?: string

		// Output only. The current state of the Registration.
		state?: string

		// Output only. Set of options for the contactSettings.privacy
		// field that this Registration supports.
		supported_privacy?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#contact_settings: close({
		admin_contact?: matchN(1, [_#defs."/$defs/contact_settings/$defs/admin_contact", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/contact_settings/$defs/admin_contact"]])
		registrant_contact?: matchN(1, [_#defs."/$defs/contact_settings/$defs/registrant_contact", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/contact_settings/$defs/registrant_contact"]])
		technical_contact?: matchN(1, [_#defs."/$defs/contact_settings/$defs/technical_contact", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/contact_settings/$defs/technical_contact"]])

		// Required. Privacy setting for the contacts associated with the
		// Registration.
		// Values are PUBLIC_CONTACT_DATA, PRIVATE_CONTACT_DATA, and
		// REDACTED_CONTACT_DATA
		privacy!: string
	})

	#dns_settings: close({
		custom_dns?: matchN(1, [_#defs."/$defs/dns_settings/$defs/custom_dns", list.MaxItems(1) & [..._#defs."/$defs/dns_settings/$defs/custom_dns"]])
		glue_records?: matchN(1, [_#defs."/$defs/dns_settings/$defs/glue_records", [..._#defs."/$defs/dns_settings/$defs/glue_records"]])
	})

	#management_settings: close({
		// The desired renewal method for this Registration. The actual
		// renewalMethod is automatically updated to reflect this choice.
		// If unset or equal to RENEWAL_METHOD_UNSPECIFIED, the actual
		// renewalMethod is treated as if it were set to
		// AUTOMATIC_RENEWAL.
		// You cannot use RENEWAL_DISABLED during resource creation, and
		// you can update the renewal status only when the Registration
		// resource has state ACTIVE or SUSPENDED.
		//
		// When preferredRenewalMethod is set to AUTOMATIC_RENEWAL, the
		// actual renewalMethod can be set to RENEWAL_DISABLED in case of
		// problems with the billing account or reported domain abuse. In
		// such cases, check the issues field on the Registration. After
		// the problem is resolved, the renewalMethod is automatically
		// updated to preferredRenewalMethod in a few hours.
		preferred_renewal_method?: string

		// Output only. The actual renewal method for this Registration.
		// When preferredRenewalMethod is set to AUTOMATIC_RENEWAL,
		// the actual renewalMethod can be equal to RENEWAL_DISABLED—for
		// example, when there are problems with the billing account
		// or reported domain abuse. In such cases, check the issues field
		// on the Registration. After the problem is resolved, the
		// renewalMethod is automatically updated to
		// preferredRenewalMethod in a few hours.
		renewal_method?: string

		// Controls whether the domain can be transferred to another
		// registrar. Values are UNLOCKED or LOCKED.
		transfer_lock_state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#yearly_price: close({
		// The three-letter currency code defined in ISO 4217.
		currency_code?: string

		// The whole units of the amount. For example if currencyCode is
		// "USD", then 1 unit is one US dollar.
		units?: string
	})

	_#defs: "/$defs/contact_settings/$defs/admin_contact": close({
		// Required. Email address of the contact.
		email!: string
		postal_address?: matchN(1, [_#defs."/$defs/contact_settings/$defs/admin_contact/$defs/postal_address", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/contact_settings/$defs/admin_contact/$defs/postal_address"]])

		// Fax number of the contact in international format. For example,
		// "+1-800-555-0123".
		fax_number?: string

		// Required. Phone number of the contact in international format.
		// For example, "+1-800-555-0123".
		phone_number!: string
	})

	_#defs: "/$defs/contact_settings/$defs/admin_contact/$defs/postal_address": close({
		// Unstructured address lines describing the lower levels of an
		// address.
		// Because values in addressLines do not have type information and
		// may sometimes contain multiple values in a single
		// field (e.g. "Austin, TX"), it is important that the line order
		// is clear. The order of address lines should be
		// "envelope order" for the country/region of the address. In
		// places where this can vary (e.g. Japan), address_language
		// is used to make it explicit (e.g. "ja" for large-to-small
		// ordering and "ja-Latn" or "en" for small-to-large). This way,
		// the most specific line of an address can be selected based on
		// the language.
		address_lines?: [...string]

		// Highest administrative subdivision which is used for postal
		// addresses of a country or region. For example, this can be a
		// state,
		// a province, an oblast, or a prefecture. Specifically, for Spain
		// this is the province and not the autonomous community
		// (e.g. "Barcelona" and not "Catalonia"). Many countries don't
		// use an administrative area in postal addresses. E.g. in
		// Switzerland
		// this should be left unpopulated.
		administrative_area?: string

		// Generally refers to the city/town portion of the address.
		// Examples: US city, IT comune, UK post town. In regions of the
		// world
		// where localities are not well defined or do not fit into this
		// structure well, leave locality empty and use addressLines.
		locality?: string

		// The name of the organization at the address.
		organization?: string

		// Postal code of the address. Not all countries use or require
		// postal codes to be present, but where they are used,
		// they may trigger additional validation with other parts of the
		// address (e.g. state/zip validation in the U.S.A.).
		postal_code?: string

		// The recipient at the address. This field may, under certain
		// circumstances, contain multiline information. For example,
		// it might contain "care of" information.
		recipients?: [...string]

		// Required. CLDR region code of the country/region of the
		// address. This is never inferred and it is up to the user to
		// ensure the value is correct. See https://cldr.unicode.org/ and
		// https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
		// for details. Example: "CH" for Switzerland.
		region_code!: string
	})

	_#defs: "/$defs/contact_settings/$defs/registrant_contact": close({
		// Required. Email address of the contact.
		email!: string
		postal_address?: matchN(1, [_#defs."/$defs/contact_settings/$defs/registrant_contact/$defs/postal_address", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/contact_settings/$defs/registrant_contact/$defs/postal_address"]])

		// Fax number of the contact in international format. For example,
		// "+1-800-555-0123".
		fax_number?: string

		// Required. Phone number of the contact in international format.
		// For example, "+1-800-555-0123".
		phone_number!: string
	})

	_#defs: "/$defs/contact_settings/$defs/registrant_contact/$defs/postal_address": close({
		// Unstructured address lines describing the lower levels of an
		// address.
		// Because values in addressLines do not have type information and
		// may sometimes contain multiple values in a single
		// field (e.g. "Austin, TX"), it is important that the line order
		// is clear. The order of address lines should be
		// "envelope order" for the country/region of the address. In
		// places where this can vary (e.g. Japan), address_language
		// is used to make it explicit (e.g. "ja" for large-to-small
		// ordering and "ja-Latn" or "en" for small-to-large). This way,
		// the most specific line of an address can be selected based on
		// the language.
		address_lines?: [...string]

		// Highest administrative subdivision which is used for postal
		// addresses of a country or region. For example, this can be a
		// state,
		// a province, an oblast, or a prefecture. Specifically, for Spain
		// this is the province and not the autonomous community
		// (e.g. "Barcelona" and not "Catalonia"). Many countries don't
		// use an administrative area in postal addresses. E.g. in
		// Switzerland
		// this should be left unpopulated.
		administrative_area?: string

		// Generally refers to the city/town portion of the address.
		// Examples: US city, IT comune, UK post town. In regions of the
		// world
		// where localities are not well defined or do not fit into this
		// structure well, leave locality empty and use addressLines.
		locality?: string

		// The name of the organization at the address.
		organization?: string

		// Postal code of the address. Not all countries use or require
		// postal codes to be present, but where they are used,
		// they may trigger additional validation with other parts of the
		// address (e.g. state/zip validation in the U.S.A.).
		postal_code?: string

		// The recipient at the address. This field may, under certain
		// circumstances, contain multiline information. For example,
		// it might contain "care of" information.
		recipients?: [...string]

		// Required. CLDR region code of the country/region of the
		// address. This is never inferred and it is up to the user to
		// ensure the value is correct. See https://cldr.unicode.org/ and
		// https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
		// for details. Example: "CH" for Switzerland.
		region_code!: string
	})

	_#defs: "/$defs/contact_settings/$defs/technical_contact": close({
		// Required. Email address of the contact.
		email!: string
		postal_address?: matchN(1, [_#defs."/$defs/contact_settings/$defs/technical_contact/$defs/postal_address", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/contact_settings/$defs/technical_contact/$defs/postal_address"]])

		// Fax number of the contact in international format. For example,
		// "+1-800-555-0123".
		fax_number?: string

		// Required. Phone number of the contact in international format.
		// For example, "+1-800-555-0123".
		phone_number!: string
	})

	_#defs: "/$defs/contact_settings/$defs/technical_contact/$defs/postal_address": close({
		// Unstructured address lines describing the lower levels of an
		// address.
		// Because values in addressLines do not have type information and
		// may sometimes contain multiple values in a single
		// field (e.g. "Austin, TX"), it is important that the line order
		// is clear. The order of address lines should be
		// "envelope order" for the country/region of the address. In
		// places where this can vary (e.g. Japan), address_language
		// is used to make it explicit (e.g. "ja" for large-to-small
		// ordering and "ja-Latn" or "en" for small-to-large). This way,
		// the most specific line of an address can be selected based on
		// the language.
		address_lines?: [...string]

		// Highest administrative subdivision which is used for postal
		// addresses of a country or region. For example, this can be a
		// state,
		// a province, an oblast, or a prefecture. Specifically, for Spain
		// this is the province and not the autonomous community
		// (e.g. "Barcelona" and not "Catalonia"). Many countries don't
		// use an administrative area in postal addresses. E.g. in
		// Switzerland
		// this should be left unpopulated.
		administrative_area?: string

		// Generally refers to the city/town portion of the address.
		// Examples: US city, IT comune, UK post town. In regions of the
		// world
		// where localities are not well defined or do not fit into this
		// structure well, leave locality empty and use addressLines.
		locality?: string

		// The name of the organization at the address.
		organization?: string

		// Postal code of the address. Not all countries use or require
		// postal codes to be present, but where they are used,
		// they may trigger additional validation with other parts of the
		// address (e.g. state/zip validation in the U.S.A.).
		postal_code?: string

		// The recipient at the address. This field may, under certain
		// circumstances, contain multiline information. For example,
		// it might contain "care of" information.
		recipients?: [...string]

		// Required. CLDR region code of the country/region of the
		// address. This is never inferred and it is up to the user to
		// ensure the value is correct. See https://cldr.unicode.org/ and
		// https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
		// for details. Example: "CH" for Switzerland.
		region_code!: string
	})

	_#defs: "/$defs/dns_settings/$defs/custom_dns": close({
		ds_records?: matchN(1, [_#defs."/$defs/dns_settings/$defs/custom_dns/$defs/ds_records", [..._#defs."/$defs/dns_settings/$defs/custom_dns/$defs/ds_records"]])

		// Required. A list of name servers that store the DNS zone for
		// this domain. Each name server is a domain
		// name, with Unicode domain names expressed in Punycode format.
		name_servers!: [...string]
	})

	_#defs: "/$defs/dns_settings/$defs/custom_dns/$defs/ds_records": close({
		// The algorithm used to generate the referenced DNSKEY.
		algorithm?: string

		// The digest generated from the referenced DNSKEY.
		digest?: string

		// The hash function used to generate the digest of the referenced
		// DNSKEY.
		digest_type?: string

		// The key tag of the record. Must be set in range 0 -- 65535.
		key_tag?: number
	})

	_#defs: "/$defs/dns_settings/$defs/glue_records": close({
		// Required. Domain name of the host in Punycode format.
		host_name!: string

		// List of IPv4 addresses corresponding to this host in the
		// standard decimal format (e.g. 198.51.100.1).
		// At least one of ipv4_address and ipv6_address must be set.
		ipv4_addresses?: [...string]

		// List of IPv4 addresses corresponding to this host in the
		// standard decimal format (e.g. 198.51.100.1).
		// At least one of ipv4_address and ipv6_address must be set.
		ipv6_addresses?: [...string]
	})
}
