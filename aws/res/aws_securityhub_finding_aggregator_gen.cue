package res

#aws_securityhub_finding_aggregator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_securityhub_finding_aggregator")
	close({
		id?:           string
		linking_mode!: string
		region?:       string
		specified_regions?: [...string]
	})
}
