package res

#aws_timestreaminfluxdb_db_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_timestreaminfluxdb_db_cluster")
	close({
		// The amount of storage to allocate for your DB storage type in
		// GiB (gibibytes).
		// This field is forbidden for InfluxDB V3 clusters (when using an
		// InfluxDB V3 db parameter group).
		allocated_storage?: number

		// Name of the initial InfluxDB bucket. All InfluxDB data is
		// stored in a bucket.
		// A bucket combines the concept of a database and a retention
		// period (the duration of time
		// that each data point persists). A bucket belongs to an
		// organization. Along with organization,
		// username, and password, this argument will be stored in the
		// secret referred to by the
		// influx_auth_parameters_secret_arn attribute. This field is
		// forbidden for InfluxDB V3 clusters
		// (when using an InfluxDB V3 db parameter group).
		bucket?: string

		// The Timestream for InfluxDB DB instance type to run InfluxDB
		// on.
		db_instance_type!: string

		// The ID of the DB parameter group to assign to your DB cluster.
		// DB parameter groups specify how the database is configured. For
		// example, DB parameter groups
		// can specify the limit for query concurrency.
		db_parameter_group_identifier?: string
		arn?:                           string

		// The Timestream for InfluxDB DB storage type to read and write
		// InfluxDB data.
		// You can choose between 3 different types of provisioned Influx
		// IOPS included storage according
		// to your workloads requirements: Influx IO Included 3000 IOPS,
		// Influx IO Included 12000 IOPS,
		// Influx IO Included 16000 IOPS.
		db_storage_type?: string

		// Specifies the type of cluster to create. This field is
		// forbidden for InfluxDB V3 clusters
		// (when using an InfluxDB V3 db parameter group).
		deployment_type?: string

		// The endpoint used to connect to InfluxDB. The default InfluxDB
		// port is 8086.
		endpoint?: string

		// The database engine type of the DB cluster.
		engine_type?: string

		// Specifies the behavior of failure recovery when the primary
		// node of the cluster
		// fails.
		failover_mode?: string

		// The Amazon Resource Name (ARN) of the AWS Secrets Manager
		// secret containing the
		// initial InfluxDB authorization parameters. For InfluxDB V2
		// clusters, the secret value is a JSON
		// formatted key-value pair holding InfluxDB authorization values:
		// organization, bucket,
		// username, and password. For InfluxDB V3 clusters, the secret
		// contains the InfluxDB admin token.
		influx_auth_parameters_secret_arn?: string

		// The name that uniquely identifies the DB cluster when
		// interacting with the
		// Amazon Timestream for InfluxDB API and CLI commands. This name
		// will also be a
		// prefix included in the endpoint. DB cluster names must be
		// unique per customer
		// and per region.
		name!: string
		id?:   string

		// Specifies whether the networkType of the Timestream for
		// InfluxDB cluster is
		// IPV4, which can communicate over IPv4 protocol only, or DUAL,
		// which can communicate
		// over both IPv4 and IPv6 protocols.
		network_type?: string

		// Name of the initial organization for the initial admin user in
		// InfluxDB. An
		// InfluxDB organization is a workspace for a group of users.
		// Along with bucket, username,
		// and password, this argument will be stored in the secret
		// referred to by the
		// influx_auth_parameters_secret_arn attribute. This field is
		// forbidden for InfluxDB V3 clusters
		// (when using an InfluxDB V3 db parameter group).
		organization?: string

		// Password of the initial admin user created in InfluxDB. This
		// password will
		// allow you to access the InfluxDB UI to perform various
		// administrative tasks and
		// also use the InfluxDB CLI to create an operator token. Along
		// with bucket, username,
		// and organization, this argument will be stored in the secret
		// referred to by the
		// influx_auth_parameters_secret_arn attribute. This field is
		// forbidden for InfluxDB V3 clusters
		// (when using an InfluxDB V3 db parameter group) as the AWS API
		// rejects it.
		password?: string
		log_delivery_configuration?: matchN(1, [#log_delivery_configuration, [...#log_delivery_configuration]])
		timeouts?: #timeouts

		// The port number on which InfluxDB accepts connections.
		port?: number

		// Configures the Timestream for InfluxDB cluster with a public IP
		// to facilitate access.
		publicly_accessible?: bool

		// The endpoint used to connect to the Timestream for InfluxDB
		// cluster for
		// read-only operations.
		reader_endpoint?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string

		// Username of the initial admin user created in InfluxDB. Must
		// start with a letter
		// and can't end with a hyphen or contain two consecutive hyphens.
		// This username will allow
		// you to access the InfluxDB UI to perform various administrative
		// tasks and also use the
		// InfluxDB CLI to create an operator token. Along with bucket,
		// organization, and password,
		// this argument will be stored in the secret referred to by the
		// influx_auth_parameters_secret_arn
		// attribute. This field is forbidden for InfluxDB V3 clusters
		// (when using an InfluxDB V3 db parameter group).
		username?: string

		// A list of VPC security group IDs to associate with the
		// Timestream for InfluxDB cluster.
		vpc_security_group_ids!: [...string]

		// A list of VPC subnet IDs to associate with the DB cluster.
		// Provide at least
		// two VPC subnet IDs in different availability zones when
		// deploying with a Multi-AZ standby.
		vpc_subnet_ids!: [...string]
	})

	#log_delivery_configuration: close({
		s3_configuration?: matchN(1, [_#defs."/$defs/log_delivery_configuration/$defs/s3_configuration", [..._#defs."/$defs/log_delivery_configuration/$defs/s3_configuration"]])
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

	_#defs: "/$defs/log_delivery_configuration/$defs/s3_configuration": close({
		// The name of the S3 bucket to deliver logs to.
		bucket_name!: string

		// Indicates whether log delivery to the S3 bucket is enabled.
		enabled!: bool
	})
}
