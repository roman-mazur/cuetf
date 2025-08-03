package res

#aws_pinpointsmsvoicev2_phone_number: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpointsmsvoicev2_phone_number")
	close({
		arn?:                         string
		timeouts?:                    #timeouts
		deletion_protection_enabled?: bool
		id?:                          string
		iso_country_code!:            string
		message_type!:                string
		monthly_leasing_price?:       string
		number_capabilities!: [...string]
		number_type!:                   string
		opt_out_list_name?:             string
		phone_number?:                  string
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
		create?: string
		delete?: string
		update?: string
	})
}
