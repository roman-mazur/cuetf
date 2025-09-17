package res

#aws_datazone_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_environment")
	close({
		account_identifier?: string
		account_region?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		blueprint_identifier?: string
		created_at?:           string
		created_by?:           string
		description?:          string
		domain_identifier!:    string
		glossary_terms?: [...string]
		timeouts?: #timeouts
		user_parameters?: matchN(1, [#user_parameters, [...#user_parameters]])
		id?: string
		last_deployment?: [...close({
			deployment_id?:     string
			deployment_status?: string
			deployment_type?:   string
			failure_reasons?: [...close({
				code?:    string
				message?: string
			})]
			is_deployment_complete?: bool
			messages?: [...string]
		})]
		name!:                 string
		profile_identifier!:   string
		project_identifier!:   string
		provider_environment?: string
		provisioned_resources?: [...close({
			name?:     string
			provider?: string
			type?:     string
			value?:    string
		})]
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

	#user_parameters: close({
		name?:  string
		value?: string
	})
}
