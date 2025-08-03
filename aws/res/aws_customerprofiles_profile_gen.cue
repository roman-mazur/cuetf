package res

import "list"

#aws_customerprofiles_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_customerprofiles_profile")
	close({
		account_number?:         string
		additional_information?: string
		address?: matchN(1, [#address, list.MaxItems(1) & [...#address]])
		billing_address?: matchN(1, [#billing_address, list.MaxItems(1) & [...#billing_address]])
		mailing_address?: matchN(1, [#mailing_address, list.MaxItems(1) & [...#mailing_address]])
		shipping_address?: matchN(1, [#shipping_address, list.MaxItems(1) & [...#shipping_address]])
		attributes?: [string]: string
		birth_date?:             string
		business_email_address?: string
		business_name?:          string
		business_phone_number?:  string
		domain_name!:            string
		email_address?:          string
		first_name?:             string
		gender_string?:          string
		home_phone_number?:      string
		id?:                     string
		last_name?:              string
		middle_name?:            string
		mobile_phone_number?:    string
		party_type_string?:      string
		personal_email_address?: string
		phone_number?:           string
		region?:                 string
	})

	#address: close({
		address_1?:   string
		address_2?:   string
		address_3?:   string
		address_4?:   string
		city?:        string
		country?:     string
		county?:      string
		postal_code?: string
		province?:    string
		state?:       string
	})

	#billing_address: close({
		address_1?:   string
		address_2?:   string
		address_3?:   string
		address_4?:   string
		city?:        string
		country?:     string
		county?:      string
		postal_code?: string
		province?:    string
		state?:       string
	})

	#mailing_address: close({
		address_1?:   string
		address_2?:   string
		address_3?:   string
		address_4?:   string
		city?:        string
		country?:     string
		county?:      string
		postal_code?: string
		province?:    string
		state?:       string
	})

	#shipping_address: close({
		address_1?:   string
		address_2?:   string
		address_3?:   string
		address_4?:   string
		city?:        string
		country?:     string
		county?:      string
		postal_code?: string
		province?:    string
		state?:       string
	})
}
