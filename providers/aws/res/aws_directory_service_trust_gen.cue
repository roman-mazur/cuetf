package res

#aws_directory_service_trust: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_directory_service_trust")
	close({
		conditional_forwarder_ip_addrs?: [...string]
		created_date_time?:                       string
		delete_associated_conditional_forwarder?: bool
		directory_id!:                            string
		id?:                                      string
		last_updated_date_time?:                  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		remote_domain_name!:           string
		selective_auth?:               string
		state_last_updated_date_time?: string
		trust_direction!:              string
		trust_password!:               string
		trust_state?:                  string
		trust_state_reason?:           string
		trust_type?:                   string
	})
}
