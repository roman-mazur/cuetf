package res

import "list"

#aws_identitystore_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_identitystore_user")
	display_name: string
	external_ids?: [...{
		id?:     string
		issuer?: string
	}]
	id?:                 string
	identity_store_id:   string
	locale?:             string
	nickname?:           string
	preferred_language?: string
	profile_url?:        string
	timezone?:           string
	title?:              string
	user_id?:            string
	user_name:           string
	user_type?:          string
	addresses?:          #addresses | list.MaxItems(1) & [...#addresses]
	emails?:             #emails | list.MaxItems(1) & [...#emails]
	name?:               #name | list.MaxItems(1) & [_, ...] & [...#name]
	phone_numbers?:      #phone_numbers | list.MaxItems(1) & [...#phone_numbers]

	#addresses: {
		country?:        string
		formatted?:      string
		locality?:       string
		postal_code?:    string
		primary?:        bool
		region?:         string
		street_address?: string
		type?:           string
	}

	#emails: {
		primary?: bool
		type?:    string
		value?:   string
	}

	#name: {
		family_name:       string
		formatted?:        string
		given_name:        string
		honorific_prefix?: string
		honorific_suffix?: string
		middle_name?:      string
	}

	#phone_numbers: {
		primary?: bool
		type?:    string
		value?:   string
	}
}
