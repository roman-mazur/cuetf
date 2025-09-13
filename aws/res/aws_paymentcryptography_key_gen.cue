package res

#aws_paymentcryptography_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_paymentcryptography_key")
	close({
		arn?:                     string
		deletion_window_in_days?: number
		enabled?:                 bool
		exportable!:              bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		id?:              string
		key_check_value?: string
		key_attributes?: matchN(1, [#key_attributes, [...#key_attributes]])
		timeouts?:                  #timeouts
		key_check_value_algorithm?: string
		key_origin?:                string
		key_state?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#key_attributes: close({
		key_modes_of_use?: matchN(1, [_#defs."/$defs/key_attributes/$defs/key_modes_of_use", [..._#defs."/$defs/key_attributes/$defs/key_modes_of_use"]])
		key_algorithm!: string
		key_class!:     string
		key_usage!:     string
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

	_#defs: "/$defs/key_attributes/$defs/key_modes_of_use": close({
		decrypt?:         bool
		derive_key?:      bool
		encrypt?:         bool
		generate?:        bool
		no_restrictions?: bool
		sign?:            bool
		unwrap?:          bool
		verify?:          bool
		wrap?:            bool
	})
}
