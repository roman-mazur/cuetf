package res

#aws_route53profiles_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53profiles_association")
	close({
		arn?:            string
		timeouts?:       #timeouts
		id?:             string
		name!:           string
		owner_id?:       string
		profile_id!:     string
		region?:         string
		resource_id!:    string
		status?:         string
		status_message?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
