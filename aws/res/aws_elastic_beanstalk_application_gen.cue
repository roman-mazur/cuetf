package res

import "list"

#aws_elastic_beanstalk_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_application")
	arn?:         string
	description?: string
	id?:          string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	appversion_lifecycle?: #appversion_lifecycle | list.MaxItems(1) & [...#appversion_lifecycle]

	#appversion_lifecycle: {
		delete_source_from_s3?: bool
		max_age_in_days?:       number
		max_count?:             number
		service_role!:          string
	}
}
