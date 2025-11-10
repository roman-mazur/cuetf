package res

import "list"

#aws_ssm_maintenance_window_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_maintenance_window_target")
	close({
		description?: string
		id?:          string
		name?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		owner_information?: string
		resource_type!:     string
		window_id!:         string
		targets!: matchN(1, [#targets, list.MaxItems(5) & [_, ...] & [...#targets]])
	})

	#targets: close({
		key!: string
		values!: [...string]
	})
}
