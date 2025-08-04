package res

#aws_neptunegraph_graph: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_neptunegraph_graph")
	close({
		arn?: string

		// A value that indicates whether the graph has deletion
		// protection enabled. The graph can't be deleted when deletion
		// protection is enabled.
		deletion_protection?: bool
		endpoint?:            string

		// The graph name. For example: my-graph-1.
		// The name must contain from 1 to 63 letters, numbers, or
		// hyphens,
		// and its first character must be a letter. It cannot end with a
		// hyphen or contain two consecutive hyphens.
		// If you don't specify a graph name, a unique graph name is
		// generated for you using the prefix graph-for,
		// followed by a combination of Stack Name and a UUID.
		graph_name?: string

		// Allows user to specify name prefix and have remainder of name
		// automatically generated.
		graph_name_prefix?: string

		// Specifies a KMS key to use to encrypt data in the new graph.
		// Value must be ARN of KMS Key.
		kms_key_identifier?: string
		id?:                 string

		// The provisioned memory-optimized Neptune Capacity Units
		// (m-NCUs) to use for the graph.
		provisioned_memory!: number

		// Specifies whether or not the graph can be reachable over the
		// internet.
		// All access to graphs is IAM authenticated.
		// When the graph is publicly available, its domain name system
		// (DNS) endpoint resolves to
		// the public IP address from the internet. When the graph isn't
		// publicly available, you need
		// to create a PrivateGraphEndpoint in a given VPC to ensure the
		// DNS name resolves to a private
		// IP address that is reachable from the VPC.
		public_connectivity?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The number of replicas in other AZs. Value must be between 0
		// and 2.
		replica_count?: number
		timeouts?:      #timeouts
		vector_search_configuration?: matchN(1, [#vector_search_configuration, [...#vector_search_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	#vector_search_configuration: close({
		// Specifies the number of dimensions for vector embeddings. Value
		// must be between 1 and 65,535.
		vector_search_dimension?: number
	})
}
