package res

import "list"

#aws_iot_thing_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iot_thing_type")
	close({
		arn?:        string
		deprecated?: bool
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
	})

	#properties: close({
		description?: string
		searchable_attributes?: [...string]
	})
}
