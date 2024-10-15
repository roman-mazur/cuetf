package data

import "list"

#aws_identitystore_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_user")
	addresses?: [...{
		country?:        string
		formatted?:      string
		locality?:       string
		postal_code?:    string
		primary?:        bool
		region?:         string
		street_address?: string
		type?:           string
	}]
	display_name?: string
	emails?: [...{
		primary?: bool
		type?:    string
		value?:   string
	}]
	external_ids?: [...{
		id?:     string
		issuer?: string
	}]
	id?:                string
	identity_store_id!: string
	locale?:            string
	name?: [...{
		family_name?:      string
		formatted?:        string
		given_name?:       string
		honorific_prefix?: string
		honorific_suffix?: string
		middle_name?:      string
	}]
	nickname?: string
	phone_numbers?: [...{
		primary?: bool
		type?:    string
		value?:   string
	}]
	preferred_language?: string
	profile_url?:        string
	timezone?:           string
	title?:              string
	user_id?:            string
	user_name?:          string
	user_type?:          string
	alternate_identifier?: #alternate_identifier | list.MaxItems(1) & [...#alternate_identifier]
	filter?: #filter | list.MaxItems(1) & [...#filter]

	#alternate_identifier: {
		external_id?: #alternate_identifier.#external_id | list.MaxItems(1) & [...#alternate_identifier.#external_id]
		unique_attribute?: #alternate_identifier.#unique_attribute | list.MaxItems(1) & [...#alternate_identifier.#unique_attribute]

		#external_id: {
			id!:     string
			issuer!: string
		}

		#unique_attribute: {
			attribute_path!:  string
			attribute_value!: string
		}
	}

	#filter: {
		attribute_path!:  string
		attribute_value!: string
	}
}
