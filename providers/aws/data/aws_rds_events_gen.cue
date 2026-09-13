package data

aws_rds_events: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_rds_events")
	close({
		duration?: number
		end_time?: string
		event_categories?: [...string]
		events?: [...close({
			date?: string
			event_categories?: [...string]
			message?:           string
			source_arn?:        string
			source_identifier?: string
			source_type?:       string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		source_identifier?: string
		source_type?:       string
		start_time?:        string
	})
}
