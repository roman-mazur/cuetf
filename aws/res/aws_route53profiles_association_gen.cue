package res

#aws_route53profiles_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_route53profiles_association")
	arn?:            string
	id?:             string
	name!:           string
	owner_id?:       string
	profile_id!:     string
	resource_id!:    string
	status?:         string
	status_message?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
