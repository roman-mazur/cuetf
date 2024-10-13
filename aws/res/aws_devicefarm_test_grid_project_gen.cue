package res

import "list"

#aws_devicefarm_test_grid_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_devicefarm_test_grid_project")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_config?: #vpc_config | list.MaxItems(1) & [...#vpc_config]

	#vpc_config: {
		security_group_ids!: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	}
}
