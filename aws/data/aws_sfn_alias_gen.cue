package data

#aws_sfn_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_alias")
	close({
		arn?:           string
		creation_date?: string
		description?:   string
		id?:            string
		name!:          string
		region?:        string
		routing_configuration?: [...close({
			state_machine_version_arn?: string
			weight?:                    number
		})]
		statemachine_arn!: string
	})
}
