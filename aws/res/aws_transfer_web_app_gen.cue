package res

#aws_transfer_web_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_web_app")
	close({
		access_endpoint?: string
		arn?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		web_app_endpoint_policy?: string
		web_app_id?:              string
		web_app_units?: [...close({
			provisioned?: number
		})]
		identity_provider_details?: matchN(1, [#identity_provider_details, [...#identity_provider_details]])
	})

	#identity_provider_details: close({
		identity_center_config?: matchN(1, [_#defs."/$defs/identity_provider_details/$defs/identity_center_config", [..._#defs."/$defs/identity_provider_details/$defs/identity_center_config"]])
	})

	_#defs: "/$defs/identity_provider_details/$defs/identity_center_config": close({
		application_arn?: string
		instance_arn?:    string
		role?:            string
	})
}
