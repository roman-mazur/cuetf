package data

#aws_fis_experiment_templates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fis_experiment_templates")
	close({
		ids?: [...string]
		region?: string
		tags?: [string]: string
	})
}
