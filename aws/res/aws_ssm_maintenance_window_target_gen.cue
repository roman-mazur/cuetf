package res

import "list"

#aws_ssm_maintenance_window_target: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_maintenance_window_target")
	close({
		description?: string
		targets?: matchN(1, [#targets, list.MaxItems(5) & [_, ...] & [...#targets]])
		id?:                string
		name?:              string
		owner_information?: string
		region?:            string
		resource_type!:     string
		window_id!:         string
	})

	#targets: close({
		key!: string
		values!: [...string]
	})
}
