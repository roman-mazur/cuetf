package res

#aws_ssmquicksetup_configuration_manager: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmquicksetup_configuration_manager")
	close({
		description?: string
		configuration_definition?: matchN(1, [#configuration_definition, [...#configuration_definition]])
		timeouts?:    #timeouts
		manager_arn?: string
		name!:        string
		region?:      string
		status_summaries?: [...close({
			status?:         string
			status_message?: string
			status_type?:    string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#configuration_definition: close({
		id?:                                       string
		local_deployment_administration_role_arn?: string
		local_deployment_execution_role_name?:     string
		parameters!: [string]: string
		type!:         string
		type_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
