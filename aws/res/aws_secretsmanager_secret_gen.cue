package res

#aws_secretsmanager_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret")
	arn?:                            string
	description?:                    string
	force_overwrite_replica_secret?: bool
	id?:                             string
	kms_key_id?:                     string
	name?:                           string
	name_prefix?:                    string
	policy?:                         string
	recovery_window_in_days?:        number
	tags?: [string]:     string
	tags_all?: [string]: string
	replica?: #replica | [...#replica]

	#replica: {
		kms_key_id?:         string
		last_accessed_date?: string
		region!:             string
		status?:             string
		status_message?:     string
	}
}
