package res

import "list"

#aws_devicefarm_test_grid_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_test_grid_project")
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
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	})
}
