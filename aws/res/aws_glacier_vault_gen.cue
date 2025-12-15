package res

import "list"

#aws_glacier_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glacier_vault")
	close({
		access_policy?: string
		arn?:           string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		location?: string
		name!:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		notification?: matchN(1, [#notification, list.MaxItems(1) & [...#notification]])
	})

	#notification: close({
		events!: [...string]
		sns_topic!: string
	})
}
