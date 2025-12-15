package data

#aws_prometheus_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_prometheus_workspace")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		alias?:               string
		arn?:                 string
		created_date?:        string
		id?:                  string
		kms_key_arn?:         string
		prometheus_endpoint?: string
		status?:              string
		tags?: [string]: string
		workspace_id!: string
	})
}
