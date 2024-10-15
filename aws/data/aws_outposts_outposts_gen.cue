package data

#aws_outposts_outposts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_outposts_outposts")
	arns?: [...string]
	availability_zone?:    string
	availability_zone_id?: string
	id?:                   string
	ids?: [...string]
	owner_id?: string
	site_id?:  string
}
