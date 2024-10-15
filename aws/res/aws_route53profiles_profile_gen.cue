package res

#aws_route53profiles_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53profiles_profile")
	arn?:            string
	id?:             string
	name!:           string
	owner_id?:       string
	share_status?:   string
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
