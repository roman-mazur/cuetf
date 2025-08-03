package res

import "list"

#aws_identitystore_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_user")
	close({
		display_name!: string
		external_ids?: [...close({
			id?:     string
			issuer?: string
		})]
		addresses?: matchN(1, [#addresses, list.MaxItems(1) & [...#addresses]])
		emails?: matchN(1, [#emails, list.MaxItems(1) & [...#emails]])
		name?: matchN(1, [#name, list.MaxItems(1) & [_, ...] & [...#name]])
		phone_numbers?: matchN(1, [#phone_numbers, list.MaxItems(1) & [...#phone_numbers]])
		id?:                 string
		identity_store_id!:  string
		locale?:             string
		nickname?:           string
		preferred_language?: string
		profile_url?:        string
		region?:             string
		timezone?:           string
		title?:              string
		user_id?:            string
		user_name!:          string
		user_type?:          string
	})

	#addresses: close({
		country?:        string
		formatted?:      string
		locality?:       string
		postal_code?:    string
		primary?:        bool
		region?:         string
		street_address?: string
		type?:           string
	})

	#emails: close({
		primary?: bool
		type?:    string
		value?:   string
	})

	#name: close({
		family_name!:      string
		formatted?:        string
		given_name!:       string
		honorific_prefix?: string
		honorific_suffix?: string
		middle_name?:      string
	})

	#phone_numbers: close({
		primary?: bool
		type?:    string
		value?:   string
	})
}
