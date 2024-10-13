package res

import "list"

#aws_route53domains_registered_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53domains_registered_domain")
	abuse_contact_email?: string
	abuse_contact_phone?: string
	admin_privacy?:       bool
	auto_renew?:          bool
	billing_privacy?:     bool
	creation_date?:       string
	domain_name!:         string
	expiration_date?:     string
	id?:                  string
	registrant_privacy?:  bool
	registrar_name?:      string
	registrar_url?:       string
	reseller?:            string
	status_list?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	tech_privacy?:  bool
	transfer_lock?: bool
	updated_date?:  string
	whois_server?:  string
	admin_contact?: #admin_contact | list.MaxItems(1) & [...#admin_contact]
	billing_contact?: #billing_contact | list.MaxItems(1) & [...#billing_contact]
	name_server?: #name_server | list.MaxItems(6) & [...#name_server]
	registrant_contact?: #registrant_contact | list.MaxItems(1) & [...#registrant_contact]
	tech_contact?: #tech_contact | list.MaxItems(1) & [...#tech_contact]
	timeouts?: #timeouts

	#admin_contact: {
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		extra_params?: [string]: string
		fax?:               string
		first_name?:        string
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	}

	#billing_contact: {
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		extra_params?: [string]: string
		fax?:               string
		first_name?:        string
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	}

	#name_server: {
		glue_ips?: [...string]
		name!: string
	}

	#registrant_contact: {
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		extra_params?: [string]: string
		fax?:               string
		first_name?:        string
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	}

	#tech_contact: {
		address_line_1?: string
		address_line_2?: string
		city?:           string
		contact_type?:   string
		country_code?:   string
		email?:          string
		extra_params?: [string]: string
		fax?:               string
		first_name?:        string
		last_name?:         string
		organization_name?: string
		phone_number?:      string
		state?:             string
		zip_code?:          string
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
