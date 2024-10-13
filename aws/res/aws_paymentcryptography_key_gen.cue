package res

#aws_paymentcryptography_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_paymentcryptography_key")
	arn?:                       string
	deletion_window_in_days?:   number
	enabled?:                   bool
	exportable!:                bool
	id?:                        string
	key_check_value?:           string
	key_check_value_algorithm?: string
	key_origin?:                string
	key_state?:                 string
	tags?: [string]:     string
	tags_all?: [string]: string
	key_attributes?: #key_attributes
	timeouts?:       #timeouts

	#key_attributes: {
		key_algorithm!:    string
		key_class!:        string
		key_usage!:        string
		key_modes_of_use?: #key_attributes.#key_modes_of_use

		#key_modes_of_use: {
			decrypt?:         bool
			derive_key?:      bool
			encrypt?:         bool
			generate?:        bool
			no_restrictions?: bool
			sign?:            bool
			unwrap?:          bool
			verify?:          bool
			wrap?:            bool
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
