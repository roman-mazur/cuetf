package res

#aws_neptune_cluster_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_neptune_cluster_endpoint")
	close({
		arn?:                         string
		cluster_endpoint_identifier!: string
		cluster_identifier!:          string
		endpoint?:                    string
		endpoint_type!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		excluded_members?: [...string]
		id?: string
		static_members?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
