package res

#aws_backup_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_vault")
	arn?:             string
	force_destroy?:   bool
	id?:              string
	kms_key_arn?:     string
	name!:            string
	recovery_points?: number
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: delete?: string
}
