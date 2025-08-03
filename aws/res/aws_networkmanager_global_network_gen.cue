package res

#aws_networkmanager_global_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_global_network")
	close({
		arn?:         string
		timeouts?:    #timeouts
		description?: string
		id?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
