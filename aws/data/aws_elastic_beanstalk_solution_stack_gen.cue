package data

#aws_elastic_beanstalk_solution_stack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_elastic_beanstalk_solution_stack")
	close({
		id?:          string
		most_recent?: bool
		name?:        string
		name_regex!:  string
		region?:      string
	})
}
