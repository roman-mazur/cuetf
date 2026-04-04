package data

#aws_waf_web_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_waf_web_acl")
	close({
		id?:   string
		name!: string
	})
}
