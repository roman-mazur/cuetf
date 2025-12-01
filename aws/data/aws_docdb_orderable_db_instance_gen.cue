package data

#aws_docdb_orderable_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_docdb_orderable_db_instance")
	close({
		availability_zones?: [...string]
		engine?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		engine_version?: string
		id?:             string
		instance_class?: string
		license_model?:  string
		preferred_instance_classes?: [...string]
		vpc?: bool
	})
}
