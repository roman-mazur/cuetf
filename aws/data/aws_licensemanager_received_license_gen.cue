package data

#aws_licensemanager_received_license: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_licensemanager_received_license")
	close({
		beneficiary?: string
		consumption_configuration?: [...close({
			borrow_configuration?: [...close({
				allow_early_check_in?:        bool
				max_time_to_live_in_minutes?: number
			})]
			provisional_configuration?: [...close({
				max_time_to_live_in_minutes?: number
			})]
			renew_type?: string
		})]
		create_time?: string
		entitlements?: [...close({
			allow_check_in?: bool
			max_count?:      number
			name?:           string
			overage?:        bool
			unit?:           string
			value?:          string
		})]
		home_region?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		issuer?: [...close({
			key_fingerprint?: string
			name?:            string
			sign_key?:        string
		})]
		license_arn!: string
		license_metadata?: [...close({
			name?:  string
			value?: string
		})]
		license_name?: string
		product_name?: string
		product_sku?:  string
		received_metadata?: [...close({
			allowed_operations?: [...string]
			received_status?:        string
			received_status_reason?: string
		})]
		status?: string
		validity?: [...close({
			begin?: string
			end?:   string
		})]
		version?: string
	})
}
