package res

import "list"

#aws_gamelift_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_alias")
	close({
		arn?:         string
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		routing_strategy!: matchN(1, [#routing_strategy, list.MaxItems(1) & [_, ...] & [...#routing_strategy]])
	})

	#routing_strategy: close({
		fleet_id?: string
		message?:  string
		type!:     string
	})
}
