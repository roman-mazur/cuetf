package res

import "list"

#aws_cleanrooms_configured_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cleanrooms_configured_table")
	close({
		table_reference!: matchN(1, [#table_reference, list.MaxItems(1) & [_, ...] & [...#table_reference]])
		timeouts?: #timeouts
		allowed_columns!: [...string]
		analysis_method!: string
		arn?:             string
		create_time?:     string
		description?:     string
		id?:              string
		name!:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
	})

	#table_reference: close({
		database_name!: string
		table_name!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
