package res

#aws_elastic_beanstalk_application_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_application_version")
	application!:  string
	arn?:          string
	bucket!:       string
	description?:  string
	force_delete?: bool
	id?:           string
	key!:          string
	name!:         string
	process?:      bool
	tags?: [string]:     string
	tags_all?: [string]: string
}
