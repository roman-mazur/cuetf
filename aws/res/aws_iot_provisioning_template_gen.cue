package res

import "list"

#aws_iot_provisioning_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_provisioning_template")
	close({
		arn?:                string
		default_version_id?: number
		description?:        string
		enabled?:            bool
		id?:                 string
		name!:               string
		pre_provisioning_hook?: matchN(1, [#pre_provisioning_hook, list.MaxItems(1) & [...#pre_provisioning_hook]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		provisioning_role_arn!: string
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
