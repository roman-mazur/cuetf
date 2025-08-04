package data

#aws_opensearchserverless_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_collection")
	close({
		// Collection-specific endpoint used to submit index, search, and
		// data upload requests to an OpenSearch Serverless collection.
		collection_endpoint?: string

		// Date the Collection was created.
		created_date?: string

		// Collection-specific endpoint used to access OpenSearch
		// Dashboards.
		dashboard_endpoint?: string
		arn?:                string

		// Description of the collection.
		description?: string

		// A failure code associated with the collection.
		failure_code?: string

		// A failure reason associated with the collection.
		failure_message?: string

		// ID of the collection.
		id?: string

		// The ARN of the Amazon Web Services KMS key used to encrypt the
		// collection.
		kms_key_arn?: string

		// Date the Collection was last modified.
		last_modified_date?: string

		// Name of the collection.
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Indicates whether standby replicas should be used for a
		// collection.
		standby_replicas?: string
		tags?: [string]: string

		// Type of collection.
		type?: string
	})
}
