package res

#aws_mskconnect_worker_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_mskconnect_worker_configuration")
	arn?:                     string
	description?:             string
	id?:                      string
	latest_revision?:         number
	name!:                    string
	properties_file_content!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: delete?: string
}
