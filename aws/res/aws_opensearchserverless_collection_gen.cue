package res

#aws_opensearchserverless_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_opensearchserverless_collection")
	close({
		// Collection-specific endpoint used to submit index, search, and
		// data upload requests to an OpenSearch Serverless collection.
		collection_endpoint?: string
		arn?:                 string

		// Collection-specific endpoint used to access OpenSearch
		// Dashboards.
		dashboard_endpoint?: string

		// Description of the collection.
		description?: string
		id?:          string

		// The ARN of the Amazon Web Services KMS key used to encrypt the
		// collection.
		kms_key_arn?: string

		// Name of the collection.
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Indicates whether standby replicas should be used for a
		// collection. One of `ENABLED` or `DISABLED`. Defaults to
		// `ENABLED`.
		standby_replicas?: string
		timeouts?:         #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string

		// Type of collection. One of `SEARCH`, `TIMESERIES`, or
		// `VECTORSEARCH`. Defaults to `TIMESERIES`.
		type?: string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})
}
