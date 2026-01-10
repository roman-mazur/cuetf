package data

#aws_opensearchserverless_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_opensearchserverless_vpc_endpoint")
	close({
		// The date the endpoint was created.
		created_date?: string

		// The name of the endpoint.
		name?: string
		id?:   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The IDs of the security groups that define the ports,
		// protocols, and sources for inbound traffic that you are
		// authorizing into your endpoint.
		security_group_ids?: [...string]

		// The IDs of the subnets from which you access OpenSearch
		// Serverless.
		subnet_ids?: [...string]

		// The unique identifier of the endpoint.
		vpc_endpoint_id!: string

		// The ID of the VPC from which you access OpenSearch Serverless.
		vpc_id?: string
	})
}
