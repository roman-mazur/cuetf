package res

#aws_route53profiles_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53profiles_resource_association")
	close({
		id?:                  string
		timeouts?:            #timeouts
		name!:                string
		owner_id?:            string
		profile_id!:          string
		region?:              string
		resource_arn!:        string
		resource_properties?: string
		resource_type?:       string
		status?:              string
		status_message?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
