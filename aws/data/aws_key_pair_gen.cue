package data

#aws_key_pair: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_key_pair")
	close({
		arn?:         string
		create_time?: string
		filter?: matchN(1, [#filter, [...#filter]])
		fingerprint?:        string
		id?:                 string
		include_public_key?: bool
		key_name?:           string
		key_pair_id?:        string
		timeouts?:           #timeouts
		key_type?:           string
		public_key?:         string
		region?:             string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
