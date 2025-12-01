package res

import "list"

#aws_codecommit_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_codecommit_trigger")
	close({
		configuration_id?: string
		id?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		repository_name!: string
		trigger!: matchN(1, [#trigger, list.MaxItems(10) & [_, ...] & [...#trigger]])
	})

	#trigger: close({
		branches?: [...string]
		custom_data?:     string
		destination_arn!: string
		events!: [...string]
		name!: string
	})
}
