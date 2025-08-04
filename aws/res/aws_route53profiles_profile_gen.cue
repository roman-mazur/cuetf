package res

#aws_route53profiles_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53profiles_profile")
	close({
		arn?:            string
		id?:             string
		name!:           string
		owner_id?:       string
		region?:         string
		share_status?:   string
		status?:         string
		timeouts?:       #timeouts
		status_message?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
