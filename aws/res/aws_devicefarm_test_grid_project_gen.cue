package res

import "list"

#aws_devicefarm_test_grid_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_test_grid_project")
	close({
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
		arn?:         string
		description?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	})
}
