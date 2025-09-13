package res

#aws_emr_studio: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_studio")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		auth_mode!:                      string
		default_s3_location!:            string
		description?:                    string
		encryption_key_arn?:             string
		engine_security_group_id!:       string
		id?:                             string
		idp_auth_url?:                   string
		idp_relay_state_parameter_name?: string
		name!:                           string
		service_role!:                   string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		url?:                         string
		user_role?:                   string
		vpc_id!:                      string
		workspace_security_group_id!: string
	})
}
