package res

import "list"

#aws_oam_link: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_oam_link")
	arn?:            string
	id?:             string
	label?:          string
	label_template!: string
	link_id?:        string
	resource_types!: [...string]
	sink_arn?:        string
	sink_identifier!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	link_configuration?: #link_configuration | list.MaxItems(1) & [...#link_configuration]
	timeouts?: #timeouts

	#link_configuration: {
		log_group_configuration?: #link_configuration.#log_group_configuration | list.MaxItems(1) & [...#link_configuration.#log_group_configuration]
		metric_configuration?: #link_configuration.#metric_configuration | list.MaxItems(1) & [...#link_configuration.#metric_configuration]

		#log_group_configuration: filter!: string

		#metric_configuration: filter!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
