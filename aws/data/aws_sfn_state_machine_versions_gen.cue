package data

#aws_sfn_state_machine_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sfn_state_machine_versions")
	id?:              string
	statemachine_arn: string
	statemachine_versions?: [...string]
}
