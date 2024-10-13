package res

#aws_route53profiles_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53profiles_resource_association")
	id?:                  string
	name!:                string
	owner_id?:            string
	profile_id!:          string
	resource_arn!:        string
	resource_properties?: string
	resource_type?:       string
	status?:              string
	status_message?:      string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
