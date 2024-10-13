package res

#aws_datazone_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datazone_domain")
	arn?:                   string
	description?:           string
	domain_execution_role!: string
	id?:                    string
	kms_key_identifier?:    string
	name!:                  string
	portal_url?:            string
	skip_deletion_check?:   bool
	tags?: [string]:     string
	tags_all?: [string]: string
	single_sign_on?: #single_sign_on | [...#single_sign_on]
	timeouts?: #timeouts

	#single_sign_on: {
		type?:            string
		user_assignment?: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
