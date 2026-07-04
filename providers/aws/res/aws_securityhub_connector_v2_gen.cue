package res

#aws_securityhub_connector_v2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securityhub_connector_v2")
	close({
		connector_provider?: matchN(1, [#connector_provider, [...#connector_provider]])
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		connector_id?: string
		description?:  string
		health?: [...close({
			connector_status?: string
			last_checked_at?:  string
			message?:          string
		})]
		kms_key_arn?: string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#connector_provider: close({
		jira_cloud?: matchN(1, [_#defs."/$defs/connector_provider/$defs/jira_cloud", [..._#defs."/$defs/connector_provider/$defs/jira_cloud"]])
		service_now?: matchN(1, [_#defs."/$defs/connector_provider/$defs/service_now", [..._#defs."/$defs/connector_provider/$defs/service_now"]])
	})

	_#defs: "/$defs/connector_provider/$defs/jira_cloud": close({
		auth_status?: string
		auth_url?:    string
		cloud_id?:    string
		domain?:      string
		project_key!: string
	})

	_#defs: "/$defs/connector_provider/$defs/service_now": close({
		auth_status?:   string
		instance_name!: string
		secret_arn!:    string
	})
}
