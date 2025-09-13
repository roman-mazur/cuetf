package res

import "list"

#aws_evidently_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_evidently_feature")
	close({
		arn?:               string
		created_time?:      string
		default_variation?: string
		description?:       string
		entity_overrides?: [string]: string
		evaluation_rules?: [...close({
			name?: string
			type?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		evaluation_strategy?: string
		id?:                  string
		timeouts?:            #timeouts
		variations?: matchN(1, [#variations, list.MaxItems(5) & [_, ...] & [...#variations]])
		last_updated_time?: string
		name!:              string
		project!:           string
		status?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		value_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#variations: close({
		value?: matchN(1, [_#defs."/$defs/variations/$defs/value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/variations/$defs/value"]])
		name!: string
	})

	_#defs: "/$defs/variations/$defs/value": close({
		bool_value?:   string
		double_value?: string
		long_value?:   string
		string_value?: string
	})
}
