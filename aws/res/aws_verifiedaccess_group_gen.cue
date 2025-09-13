package res

import "list"

#aws_verifiedaccess_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedaccess_group")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		creation_time?:     string
		deletion_time?:     string
		description?:       string
		id?:                string
		last_updated_time?: string
		owner?:             string
		sse_configuration?: matchN(1, [#sse_configuration, list.MaxItems(1) & [...#sse_configuration]])
		policy_document?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		verifiedaccess_group_arn?:   string
		verifiedaccess_group_id?:    string
		verifiedaccess_instance_id!: string
	})

	#sse_configuration: close({
		customer_managed_key_enabled?: bool
		kms_key_arn?:                  string
	})
}
