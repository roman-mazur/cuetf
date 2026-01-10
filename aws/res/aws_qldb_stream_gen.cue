package res

import "list"

#aws_qldb_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_qldb_stream")
	close({
		arn?:                  string
		exclusive_end_time?:   string
		id?:                   string
		inclusive_start_time!: string
		ledger_name!:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		kinesis_configuration!: matchN(1, [#kinesis_configuration, list.MaxItems(1) & [_, ...] & [...#kinesis_configuration]])
		role_arn!:    string
		timeouts?:    #timeouts
		stream_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#kinesis_configuration: close({
		aggregation_enabled?: bool
		stream_arn!:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
