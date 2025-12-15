package res

import "list"

#aws_sfn_activity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sfn_activity")
	close({
		arn?:           string
		creation_date?: string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
	})

	#encryption_configuration: close({
		kms_data_key_reuse_period_seconds?: number
		kms_key_id?:                        string
		type?:                              string
	})
}
