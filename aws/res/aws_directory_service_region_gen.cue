package res

import "list"

#aws_directory_service_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_region")
	desired_number_of_domain_controllers?: number
	directory_id:                          string
	id?:                                   string
	region_name:                           string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?:     #timeouts
	vpc_settings?: #vpc_settings | list.MaxItems(1) & [_, ...] & [...#vpc_settings]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_settings: {
		subnet_ids: [...string]
		vpc_id: string
	}
}
