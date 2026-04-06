package res

import "list"

#aws_ram_resource_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ram_resource_share")
	close({
		resource_share_configuration?: matchN(1, [#resource_share_configuration, list.MaxItems(1) & [...#resource_share_configuration]])
		timeouts?:                  #timeouts
		allow_external_principals?: bool
		arn?:                       string
		id?:                        string
		name!:                      string
		permission_arns?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#resource_share_configuration: close({
		retain_sharing_on_account_leave_organization?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
