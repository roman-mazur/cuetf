package res

import "list"

#elasticstack_elasticsearch_snapshot_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_snapshot_repository")
	close({
		azure?: matchN(1, [#azure, list.MaxItems(1) & [...#azure]])

		// Internal identifier of the resource
		id?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// Name of the snapshot repository to register or update.
		name!: string
		fs?: matchN(1, [#fs, list.MaxItems(1) & [...#fs]])
		gcs?: matchN(1, [#gcs, list.MaxItems(1) & [...#gcs]])

		// If true, the request verifies the repository is functional on
		// all master and data nodes in the cluster.
		verify?: bool
		hdfs?: matchN(1, [#hdfs, list.MaxItems(1) & [...#hdfs]])
		s3?: matchN(1, [#s3, list.MaxItems(1) & [...#s3]])
		url?: matchN(1, [#url, list.MaxItems(1) & [...#url]])
	})

	#azure: close({
		// Specifies the path within the container to the repository data.
		base_path?: string

		// Maximum size of files in snapshots.
		chunk_size?: string

		// Azure named client to use.
		client?: string

		// If true, metadata files, such as index mappings and settings,
		// are compressed in snapshots.
		compress?: bool

		// Container name. You must create the Azure container before
		// creating the repository.
		container!: string

		// Location mode. `primary_only` or `secondary_only`. See the
		// [Azure storage redundancy
		// documentation](https://docs.microsoft.com/en-us/azure/storage/common/storage-redundancy)
		// for more details.
		location_mode?: string

		// Maximum snapshot restore rate per node.
		max_restore_bytes_per_sec?: string

		// Maximum snapshot creation rate per node.
		max_snapshot_bytes_per_sec?: string

		// If true, the repository is read-only.
		readonly?: bool
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})

	#fs: close({
		// Maximum size of files in snapshots.
		chunk_size?: string

		// If true, metadata files, such as index mappings and settings,
		// are compressed in snapshots.
		compress?: bool

		// Location of the shared filesystem used to store and retrieve
		// snapshots.
		location!: string

		// Maximum number of snapshots the repository can contain.
		max_number_of_snapshots?: number

		// Maximum snapshot restore rate per node.
		max_restore_bytes_per_sec?: string

		// Maximum snapshot creation rate per node.
		max_snapshot_bytes_per_sec?: string

		// If true, the repository is read-only.
		readonly?: bool
	})

	#gcs: close({
		// Specifies the path within the bucket to the repository data.
		// Defaults to the root of the bucket.
		base_path?: string

		// The name of the bucket to be used for snapshots.
		bucket!: string

		// Maximum size of files in snapshots.
		chunk_size?: string

		// The name of the client to use to connect to Google Cloud
		// Storage.
		client?: string

		// If true, metadata files, such as index mappings and settings,
		// are compressed in snapshots.
		compress?: bool

		// Maximum snapshot restore rate per node.
		max_restore_bytes_per_sec?: string

		// Maximum snapshot creation rate per node.
		max_snapshot_bytes_per_sec?: string

		// If true, the repository is read-only.
		readonly?: bool
	})

	#hdfs: close({
		// Maximum size of files in snapshots.
		chunk_size?: string

		// If true, metadata files, such as index mappings and settings,
		// are compressed in snapshots.
		compress?: bool

		// Whether to load the default Hadoop configuration or not.
		load_defaults?: bool

		// Maximum snapshot restore rate per node.
		max_restore_bytes_per_sec?: string

		// Maximum snapshot creation rate per node.
		max_snapshot_bytes_per_sec?: string

		// The file path within the filesystem where data is
		// stored/loaded.
		path!: string

		// If true, the repository is read-only.
		readonly?: bool

		// The uri address for hdfs. ex: "hdfs://<host>:<port>/".
		uri!: string
	})

	#s3: close({
		// Specifies the path to the repository data within its bucket.
		base_path?: string

		// Name of the S3 bucket to use for snapshots.
		bucket!: string

		// Minimum threshold below which the chunk is uploaded using a
		// single request.
		buffer_size?: string

		// The S3 repository supports all S3 canned ACLs.
		canned_acl?: string

		// Maximum size of files in snapshots.
		chunk_size?: string

		// The name of the S3 client to use to connect to S3.
		client?: string

		// If true, metadata files, such as index mappings and settings,
		// are compressed in snapshots.
		compress?: bool

		// Custom S3 service endpoint, useful when using VPC endpoints or
		// non-default S3 URLs.
		endpoint?: string

		// Maximum snapshot restore rate per node.
		max_restore_bytes_per_sec?: string

		// Maximum snapshot creation rate per node.
		max_snapshot_bytes_per_sec?: string

		// If true, path style access pattern will be used.
		path_style_access?: bool

		// If true, the repository is read-only.
		readonly?: bool

		// When true, files are encrypted server-side using AES-256
		// algorithm.
		server_side_encryption?: bool

		// Sets the S3 storage class for objects stored in the snapshot
		// repository.
		storage_class?: string
	})

	#url: close({
		// Maximum size of files in snapshots.
		chunk_size?: string

		// If true, metadata files, such as index mappings and settings,
		// are compressed in snapshots.
		compress?: bool

		// Maximum number of retries for http and https URLs.
		http_max_retries?: number

		// Maximum wait time for data transfers over a connection.
		http_socket_timeout?: string

		// Maximum number of snapshots the repository can contain.
		max_number_of_snapshots?: number

		// Maximum snapshot restore rate per node.
		max_restore_bytes_per_sec?: string

		// Maximum snapshot creation rate per node.
		max_snapshot_bytes_per_sec?: string

		// If true, the repository is read-only.
		readonly?: bool

		// URL location of the root of the shared filesystem repository.
		url!: string
	})
}
