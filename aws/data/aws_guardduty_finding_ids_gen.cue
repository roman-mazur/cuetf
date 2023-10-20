package data

#aws_guardduty_finding_ids: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_guardduty_finding_ids")
	detector_id: string
	finding_ids?: [...string]
	has_findings?: bool
	id?:           string
}
