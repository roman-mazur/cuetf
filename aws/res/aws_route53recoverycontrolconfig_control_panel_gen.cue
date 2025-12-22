package res

#aws_route53recoverycontrolconfig_control_panel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_route53recoverycontrolconfig_control_panel")
	close({
		arn?:                   string
		cluster_arn!:           string
		default_control_panel?: bool
		id?:                    string
		name!:                  string
		routing_control_count?: number
		status?:                string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
