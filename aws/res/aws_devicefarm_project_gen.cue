package res

#aws_devicefarm_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_project")
	arn?:                         string
	default_job_timeout_minutes?: number
	id?:                          string
	name!:                        string
	tags?: [string]:     string
	tags_all?: [string]: string
}
