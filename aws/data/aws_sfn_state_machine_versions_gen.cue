package data

#aws_sfn_state_machine_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_state_machine_versions")
	close({
		id?:               string
		region?:           string
		statemachine_arn!: string
		statemachine_versions?: [...string]
	})
}
