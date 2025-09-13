package res

#aws_account_primary_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_account_primary_contact")
	close({
		account_id?:         string
		address_line_1!:     string
		address_line_2?:     string
		address_line_3?:     string
		city!:               string
		company_name?:       string
		country_code!:       string
		district_or_county?: string
		full_name!:          string
		id?:                 string
		phone_number!:       string
		postal_code!:        string
		state_or_region?:    string
		website_url?:        string
	})
}
