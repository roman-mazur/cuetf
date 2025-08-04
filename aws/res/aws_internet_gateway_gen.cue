package res

#aws_internet_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_internet_gateway")
	close({
		timeouts?: #timeouts
		arn?:      string
		id?:       string
		owner_id?: string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
