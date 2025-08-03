package res

import "list"

#aws_directory_service_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_region")
	close({
		desired_number_of_domain_controllers?: number
		timeouts?:                             #timeouts
		vpc_settings?: matchN(1, [#vpc_settings, list.MaxItems(1) & [_, ...] & [...#vpc_settings]])
		directory_id!: string
		id?:           string
		region?:       string
		region_name!:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_settings: close({
		subnet_ids!: [...string]
		vpc_id!: string
	})
}
