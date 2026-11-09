package data

aws_lambdaweb_function_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_lambdaweb_function_endpoint")
	close({
		arn?:                  string
		auth_type?:            string
		auto_deployment_mode?: string
		description?:          string
		domain_name?:          string
		endpoint_name!:        string
		endpoint_type?:        string
		function_name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		regional_domain_names?: [string]: string
		regions?: [...string]
		revision_weights?: [...close({
			revision_id?: string
			weight?:      number
		})]
		scaling_config?: [...close({
			max_environments?: number
		})]
		state?:        string
		state_reason?: string
		throttle_config?: [...close({
			rate_limit?: number
		})]
	})
}
