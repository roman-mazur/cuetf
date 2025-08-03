package res

import "list"

#aws_iot_provisioning_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_provisioning_template")
	close({
		arn?:                   string
		default_version_id?:    number
		description?:           string
		enabled?:               bool
		id?:                    string
		name!:                  string
		provisioning_role_arn!: string
		region?:                string
		pre_provisioning_hook?: matchN(1, [#pre_provisioning_hook, list.MaxItems(1) & [...#pre_provisioning_hook]])
		tags?: [string]:     string
		tags_all?: [string]: string
		template_body!: string
		type?:          string
	})

	#pre_provisioning_hook: close({
		payload_version?: string
		target_arn!:      string
	})
}
