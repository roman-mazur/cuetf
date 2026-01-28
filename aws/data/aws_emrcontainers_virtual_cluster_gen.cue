package data

#aws_emrcontainers_virtual_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_emrcontainers_virtual_cluster")
	close({
		arn?: string
		container_provider?: [...close({
			id?: string
			info?: [...close({
				eks_info?: [...close({
					namespace?: string
				})]
			})]
			type?: string
		})]
		created_at?: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name?:   string
		state?:  string
		tags?: [string]: string
		virtual_cluster_id!: string
	})
}
