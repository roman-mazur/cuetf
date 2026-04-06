package res

#aws_redshift_endpoint_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_redshift_endpoint_authorization")
	close({
		account!:            string
		allowed_all_vpcs?:   bool
		cluster_identifier!: string
		endpoint_count?:     number
		force_delete?:       bool
		grantee?:            string
		grantor?:            string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		vpc_ids?: [...string]
	})
}
