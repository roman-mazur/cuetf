package res

#aws_applicationinsights_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_applicationinsights_application")
	close({
		arn?:                 string
		auto_config_enabled?: bool
		auto_create?:         bool
		cwe_monitor_enabled?: bool
		grouping_type?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		id?:                     string
		ops_center_enabled?:     bool
		ops_item_sns_topic_arn?: string
		resource_group_name!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
