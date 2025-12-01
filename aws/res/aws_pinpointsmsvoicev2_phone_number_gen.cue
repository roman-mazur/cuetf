package res

#aws_pinpointsmsvoicev2_phone_number: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_pinpointsmsvoicev2_phone_number")
	close({
		arn?:                         string
		deletion_protection_enabled?: bool
		id?:                          string
		iso_country_code!:            string
		message_type!:                string
		monthly_leasing_price?:       string
		number_capabilities!: [...string]
		number_type!:       string
		opt_out_list_name?: string
		phone_number?:      string
		timeouts?:          #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                        string
		registration_id?:               string
		self_managed_opt_outs_enabled?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
		two_way_channel_arn?:     string
		two_way_channel_enabled?: bool
		two_way_channel_role?:    string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
