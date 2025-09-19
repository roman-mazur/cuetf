package data

#aws_vpclattice_listener: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_listener")
	close({
		arn?:        string
		created_at?: string
		default_action?: [...close({
			fixed_response?: [...close({
				status_code?: number
			})]
			forward?: [...close({
				target_groups?: [...close({
					target_group_identifier?: string
					weight?:                  number
				})]
			})]
		})]
		id?:              string
		last_updated_at?: string
		listener_id?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		listener_identifier!: string
		name?:                string
		port?:                number
		protocol?:            string
		service_arn?:         string
		service_id?:          string
		service_identifier!:  string
		tags?: [string]: string
	})
}
