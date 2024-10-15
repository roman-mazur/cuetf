package res

#aws_qldb_ledger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_qldb_ledger")
	arn?:                 string
	deletion_protection?: bool
	id?:                  string
	kms_key?:             string
	name?:                string
	permissions_mode!:    string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
