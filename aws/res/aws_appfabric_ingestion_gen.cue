package res

#aws_appfabric_ingestion: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appfabric_ingestion")
	close({
		app!:            string
		app_bundle_arn!: string
		arn?:            string
		id?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		ingestion_type!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		tenant_id!: string
	})
}
