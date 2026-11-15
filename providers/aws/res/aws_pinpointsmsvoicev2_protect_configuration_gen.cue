package res

aws_pinpointsmsvoicev2_protect_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpointsmsvoicev2_protect_configuration")
	close({
		account_default?:             bool
		arn?:                         string
		created_timestamp?:           string
		deletion_protection_enabled?: bool
		id?:                          string
		mms_country_rules?: [string]: string
		rcs_country_rules?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		sms_country_rules?: [string]:   string
		tags?: [string]:                string
		tags_all?: [string]:            string
		voice_country_rules?: [string]: string
	})
}
