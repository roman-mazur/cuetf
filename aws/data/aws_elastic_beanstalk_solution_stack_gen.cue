package data

#aws_elastic_beanstalk_solution_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_elastic_beanstalk_solution_stack")
	id?:          string
	most_recent?: bool
	name?:        string
	name_regex:   string
}
