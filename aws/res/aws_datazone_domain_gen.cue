package res

#aws_datazone_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datazone_domain")
	close({
		arn?:                   string
		description?:           string
		domain_execution_role!: string
		id?:                    string
		kms_key_identifier?:    string
		name!:                  string
		single_sign_on?: matchN(1, [#single_sign_on, [...#single_sign_on]])
		portal_url?:          string
		region?:              string
		timeouts?:            #timeouts
		skip_deletion_check?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#single_sign_on: close({
		type?:            string
		user_assignment?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
