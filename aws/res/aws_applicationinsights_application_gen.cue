package res

#aws_applicationinsights_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_applicationinsights_application")
	arn?:                    string
	auto_config_enabled?:    bool
	auto_create?:            bool
	cwe_monitor_enabled?:    bool
	grouping_type?:          string
	id?:                     string
	ops_center_enabled?:     bool
	ops_item_sns_topic_arn?: string
	resource_group_name:     string
	tags?: [string]: string
	tags_all?: [string]: string
}
