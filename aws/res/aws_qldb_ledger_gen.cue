package res

#aws_qldb_ledger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_qldb_ledger")
	close({
		arn?:                 string
		timeouts?:            #timeouts
		deletion_protection?: bool
		id?:                  string
		kms_key?:             string
		name?:                string
		permissions_mode!:    string
		region?:              string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
