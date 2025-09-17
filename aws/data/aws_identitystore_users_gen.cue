package data

#aws_identitystore_users: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_users")
	close({
		identity_store_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		users?: [...close({
			addresses?: [...close({
				country?:        string
				formatted?:      string
				locality?:       string
				postal_code?:    string
				primary?:        bool
				region?:         string
				street_address?: string
				type?:           string
			})]
			display_name?: string
			emails?: [...close({
				primary?: bool
				type?:    string
				value?:   string
			})]
			external_ids?: [...close({
				id?:     string
				issuer?: string
			})]
			identity_store_id?: string
			locale?:            string
			name?: [...close({
				family_name?:      string
				formatted?:        string
				given_name?:       string
				honorific_prefix?: string
				honorific_suffix?: string
				middle_name?:      string
			})]
			nickname?: string
			phone_numbers?: [...close({
				primary?: bool
				type?:    string
				value?:   string
			})]
			preferred_language?: string
			profile_url?:        string
			timezone?:           string
			title?:              string
			user_id?:            string
			user_name?:          string
			user_type?:          string
		})]
	})
}
