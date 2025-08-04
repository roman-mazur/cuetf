package res

#aws_appconfig_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_environment")
	close({
		monitor?: matchN(1, [#monitor, [...#monitor]])
		application_id!: string
		arn?:            string
		description?:    string
		environment_id?: string
		name!:           string
		region?:         string
		state?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#monitor: close({
		alarm_arn!:      string
		alarm_role_arn?: string
	})
}
