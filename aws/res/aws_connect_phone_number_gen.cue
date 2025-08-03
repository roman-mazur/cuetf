package res

#aws_connect_phone_number: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_phone_number")
	close({
		arn?:          string
		country_code!: string
		description?:  string
		id?:           string
		phone_number?: string
		prefix?:       string
		region?:       string
		status?: [...close({
			message?: string
			status?:  string
		})]
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		target_arn!: string
		type!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
