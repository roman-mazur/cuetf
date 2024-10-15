package res

#aws_securityhub_finding_aggregator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_finding_aggregator")
	id?:           string
	linking_mode!: string
	specified_regions?: [...string]
}
