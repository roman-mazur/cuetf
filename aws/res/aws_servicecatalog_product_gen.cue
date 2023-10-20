package res

import "list"

#aws_servicecatalog_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_product")
	accept_language?:     string
	arn?:                 string
	created_time?:        string
	description?:         string
	distributor?:         string
	has_default_path?:    bool
	id?:                  string
	name:                 string
	owner:                string
	status?:              string
	support_description?: string
	support_email?:       string
	support_url?:         string
	tags?: [string]: string
	tags_all?: [string]: string
	type:                              string
	provisioning_artifact_parameters?: #provisioning_artifact_parameters | list.MaxItems(1) & [_, ...] & [...#provisioning_artifact_parameters]
	timeouts?:                         #timeouts

	#provisioning_artifact_parameters: {
		description?:                 string
		disable_template_validation?: bool
		name?:                        string
		template_physical_id?:        string
		template_url?:                string
		type?:                        string
	}

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
