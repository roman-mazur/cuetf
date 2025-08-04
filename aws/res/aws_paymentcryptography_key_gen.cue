package res

#aws_paymentcryptography_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_paymentcryptography_key")
	close({
		arn?:                     string
		deletion_window_in_days?: number
		enabled?:                 bool
		exportable!:              bool
		id?:                      string
		key_check_value?:         string
		key_attributes?: matchN(1, [#key_attributes, [...#key_attributes]])
		key_check_value_algorithm?: string
		timeouts?:                  #timeouts
		key_origin?:                string
		key_state?:                 string
		region?:                    string
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
		create?: string
		delete?: string
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
