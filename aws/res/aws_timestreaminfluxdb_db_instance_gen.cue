package res

#aws_timestreaminfluxdb_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_timestreaminfluxdb_db_instance")
	close({
		// The amount of storage to allocate for your DB storage type in
		// GiB (gibibytes).
		allocated_storage!: number

		// The Availability Zone in which the DB instance resides.
		availability_zone?: string

		// The name of the initial InfluxDB bucket. All InfluxDB data is
		// stored in a bucket.
		// A bucket combines the concept of a database and a retention
		// period (the duration of time
		// that each data point persists). A bucket belongs to an
		// organization.
		bucket!: string

		// The Timestream for InfluxDB DB instance type to run InfluxDB
		// on.
		db_instance_type!: string
		arn?:              string

		// The id of the DB parameter group assigned to your DB instance.
		db_parameter_group_identifier?: string

		// The Timestream for InfluxDB DB storage type to read and write
		// InfluxDB data.
		// You can choose between 3 different types of provisioned Influx
		// IOPS included storage according
		// to your workloads requirements: Influx IO Included 3000 IOPS,
		// Influx IO Included 12000 IOPS,
		// Influx IO Included 16000 IOPS.
		db_storage_type?: string

		// Specifies whether the DB instance will be deployed as a
		// standalone instance or
		// with a Multi-AZ standby for high availability.
		deployment_type?: string

		// The endpoint used to connect to InfluxDB. The default InfluxDB
		// port is 8086.
		endpoint?: string

		// The Amazon Resource Name (ARN) of the AWS Secrets Manager
		// secret containing the
		// initial InfluxDB authorization parameters. The secret value is
		// a JSON formatted
		// key-value pair holding InfluxDB authorization values:
		// organization, bucket,
		// username, and password.
		influx_auth_parameters_secret_arn?: string
		id?:                                string

		// The name that uniquely identifies the DB instance when
		// interacting with the
		// Amazon Timestream for InfluxDB API and CLI commands. This name
		// will also be a
		// prefix included in the endpoint. DB instance names must be
		// unique per customer
		// and per region.
		name!: string

		// Specifies whether the networkType of the Timestream for
		// InfluxDB instance is
		// IPV4, which can communicate over IPv4 protocol only, or DUAL,
		// which can communicate
		// over both IPv4 and IPv6 protocols.
		network_type?: string

		// The name of the initial organization for the initial admin user
		// in InfluxDB. An
		// InfluxDB organization is a workspace for a group of users.
		organization!: string

		// The password of the initial admin user created in InfluxDB.
		// This password will
		// allow you to access the InfluxDB UI to perform various
		// administrative tasks and
		// also use the InfluxDB CLI to create an operator token. These
		// attributes will be
		// stored in a Secret created in AWS SecretManager in your
		// account.
		password!: string

		// The port number on which InfluxDB accepts connections.
		port?: number
		log_delivery_configuration?: matchN(1, [#log_delivery_configuration, [...#log_delivery_configuration]])
		timeouts?: #timeouts

		// Configures the DB instance with a public IP to facilitate
		// access.
		publicly_accessible?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// The Availability Zone in which the standby instance is located
		// when deploying
		// with a MultiAZ standby instance.
		secondary_availability_zone?: string
		tags?: [string]:     string
		tags_all?: [string]: string

		// The username of the initial admin user created in InfluxDB.
		// Must start with a letter and can't end with a hyphen or contain
		// two
		// consecutive hyphens. For example, my-user1. This username will
		// allow
		// you to access the InfluxDB UI to perform various administrative
		// tasks
		// and also use the InfluxDB CLI to create an operator token.
		// These
		// attributes will be stored in a Secret created in Amazon Secrets
		// Manager in your account
		username!: string

		// A list of VPC security group IDs to associate with the DB
		// instance.
		vpc_security_group_ids!: [...string]

		// A list of VPC subnet IDs to associate with the DB instance.
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
