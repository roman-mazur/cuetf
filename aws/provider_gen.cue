package aws

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		// The access key for API operations. You can retrieve this
		// from the 'Security & Credentials' section of the AWS console.
		access_key?: string

		// File containing custom root and intermediate certificates. Can
		// also be configured using the `AWS_CA_BUNDLE` environment
		// variable. (Setting `ca_bundle` in the shared config file is
		// not supported.)
		custom_ca_bundle?: string
		allowed_account_ids?: [...string]

		// Address of the EC2 metadata service endpoint to use. Can also
		// be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT`
		// environment variable.
		ec2_metadata_service_endpoint?: string

		// Protocol to use with EC2 metadata service endpoint.Valid values
		// are `IPv4` and `IPv6`. Can also be configured using the
		// `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.
		ec2_metadata_service_endpoint_mode?: string

		// URL of a proxy to use for HTTP requests when accessing the AWS
		// API. Can also be set using the `HTTP_PROXY` or `http_proxy`
		// environment variables.
		http_proxy?: string

		// URL of a proxy to use for HTTPS requests when accessing the AWS
		// API. Can also be set using the `HTTPS_PROXY` or `https_proxy`
		// environment variables.
		https_proxy?: string
		forbidden_account_ids?: [...string]

		// Explicitly allow the provider to perform "insecure" SSL
		// requests. If omitted, default value is `false`
		insecure?: bool

		// The maximum number of times an AWS API request is
		// being executed. If the API request still fails, an error is
		// thrown.
		max_retries?: number

		// Comma-separated list of hosts that should not use HTTP or HTTPS
		// proxies. Can also be set using the `NO_PROXY` or `no_proxy`
		// environment variables.
		no_proxy?: string

		// The profile for API operations. If not set, the default profile
		// created with `aws configure` will be used.
		profile?: string

		// The region where AWS operations will take place. Examples
		// are us-east-1, us-west-2, etc.
		region?: string

		// Specifies how retries are attempted. Valid values are
		// `standard` and `adaptive`. Can also be configured using the
		// `AWS_RETRY_MODE` environment variable.
		retry_mode?: string

		// Specifies whether S3 API calls in the `us-east-1` region use
		// the legacy global endpoint or a regional endpoint. Valid
		// values are `legacy` or `regional`. Can also be configured
		// using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment
		// variable or the `s3_us_east_1_regional_endpoint` shared config
		// file parameter
		s3_us_east_1_regional_endpoint?: string

		// Set this to true to enable the request to use path-style
		// addressing,
		// i.e., https://s3.amazonaws.com/BUCKET/KEY. By default, the S3
		// client will
		// use virtual hosted bucket addressing when possible
		// (https://BUCKET.s3.amazonaws.com/KEY). Specific to the Amazon
		// S3 service.
		s3_use_path_style?: bool

		// The secret key for API operations. You can retrieve this
		// from the 'Security & Credentials' section of the AWS console.
		secret_key?: string

		// List of paths to shared config files. If not set, defaults to
		// [~/.aws/config].
		shared_config_files?: [...string]

		// List of paths to shared credentials files. If not set, defaults
		// to [~/.aws/credentials].
		shared_credentials_files?: [...string]
		assume_role?: matchN(1, [#assume_role, [...#assume_role]])
		assume_role_with_web_identity?: matchN(1, [#assume_role_with_web_identity, [...#assume_role_with_web_identity]])
		default_tags?: matchN(1, [#default_tags, [...#default_tags]])
		endpoints?: matchN(1, [#endpoints, [...#endpoints]])
		ignore_tags?: matchN(1, [#ignore_tags, [...#ignore_tags]])

		// Skip the credentials validation via STS API. Used for AWS API
		// implementations that do not have STS available/implemented.
		skip_credentials_validation?: bool

		// Skip the AWS Metadata API check. Used for AWS API
		// implementations that do not have a metadata api endpoint.
		skip_metadata_api_check?: string

		// Skip static validation of region name. Used by users of
		// alternative AWS-like APIs or users w/ access to regions that
		// are not public (yet).
		skip_region_validation?: bool

		// Skip requesting the account ID. Used for AWS API
		// implementations that do not have IAM/STS API and/or metadata
		// API.
		skip_requesting_account_id?: bool

		// The region where AWS STS operations will take place. Examples
		// are us-east-1 and us-west-2.
		sts_region?: string

		// The severity with which to enforce organizational tagging
		// policies on resources managed by this provider instance. At
		// this time this only includes compliance with required tag keys
		// by resource type. Valid values are "error", "warning", and
		// "disabled". When unset or "disabled", tag policy compliance
		// will not be enforced by the provider. Can also be configured
		// with the TF_AWS_TAG_POLICY_COMPLIANCE environment variable.
		tag_policy_compliance?: string

		// session token. A session token is only required if you are
		// using temporary security credentials.
		token?: string

		// The capacity of the AWS SDK's token bucket rate limiter.
		token_bucket_rate_limiter_capacity?: number

		// Resolve an endpoint with DualStack capability
		use_dualstack_endpoint?: bool

		// Resolve an endpoint with FIPS capability
		use_fips_endpoint?: bool
	})

	#assume_role: close({
		// The duration, between 15 minutes and 12 hours, of the role
		// session. Valid time units are ns, us (or µs), ms, s, h, or m.
		duration?: string

		// A unique identifier that might be required when you assume a
		// role in another account.
		external_id?: string

		// IAM Policy JSON describing further restricting permissions for
		// the IAM Role being assumed.
		policy?: string

		// Amazon Resource Names (ARNs) of IAM Policies describing further
		// restricting permissions for the IAM Role being assumed.
		policy_arns?: [...string]

		// Amazon Resource Name (ARN) of an IAM Role to assume prior to
		// making API calls.
		role_arn?: string

		// An identifier for the assumed role session.
		session_name?: string

		// Source identity specified by the principal assuming the role.
		source_identity?: string

		// Assume role session tags.
		tags?: [string]: string

		// Assume role session tag keys to pass to any subsequent
		// sessions.
		transitive_tag_keys?: [...string]
	})

	#assume_role_with_web_identity: close({
		// The duration, between 15 minutes and 12 hours, of the role
		// session. Valid time units are ns, us (or µs), ms, s, h, or m.
		duration?: string

		// IAM Policy JSON describing further restricting permissions for
		// the IAM Role being assumed.
		policy?: string

		// Amazon Resource Names (ARNs) of IAM Policies describing further
		// restricting permissions for the IAM Role being assumed.
		policy_arns?: [...string]

		// Amazon Resource Name (ARN) of an IAM Role to assume prior to
		// making API calls.
		role_arn?: string

		// An identifier for the assumed role session.
		session_name?:            string
		web_identity_token?:      string
		web_identity_token_file?: string
	})

	#default_tags: close({
		// Resource tags to default across all resources. Can also be
		// configured with environment variables like
		// `TF_AWS_DEFAULT_TAGS_<tag_name>`.
		tags?: [string]: string
	})

	#endpoints: close({
		// Use this to override the default service endpoint URL
		accessanalyzer?: string

		// Use this to override the default service endpoint URL
		account?: string

		// Use this to override the default service endpoint URL
		acm?: string

		// Use this to override the default service endpoint URL
		acmpca?: string

		// Use this to override the default service endpoint URL
		amg?: string

		// Use this to override the default service endpoint URL
		amp?: string

		// Use this to override the default service endpoint URL
		amplify?: string

		// Use this to override the default service endpoint URL
		apigateway?: string

		// Use this to override the default service endpoint URL
		apigatewayv2?: string

		// Use this to override the default service endpoint URL
		appautoscaling?: string

		// Use this to override the default service endpoint URL
		appconfig?: string

		// Use this to override the default service endpoint URL
		appfabric?: string

		// Use this to override the default service endpoint URL
		appflow?: string

		// Use this to override the default service endpoint URL
		appintegrations?: string

		// Use this to override the default service endpoint URL
		appintegrationsservice?: string

		// Use this to override the default service endpoint URL
		applicationautoscaling?: string

		// Use this to override the default service endpoint URL
		applicationinsights?: string

		// Use this to override the default service endpoint URL
		applicationsignals?: string

		// Use this to override the default service endpoint URL
		appmesh?: string

		// Use this to override the default service endpoint URL
		appregistry?: string

		// Use this to override the default service endpoint URL
		apprunner?: string

		// Use this to override the default service endpoint URL
		appstream?: string

		// Use this to override the default service endpoint URL
		appsync?: string

		// Use this to override the default service endpoint URL
		arcregionswitch?: string

		// Use this to override the default service endpoint URL
		athena?: string

		// Use this to override the default service endpoint URL
		auditmanager?: string

		// Use this to override the default service endpoint URL
		autoscaling?: string

		// Use this to override the default service endpoint URL
		autoscalingplans?: string

		// Use this to override the default service endpoint URL
		backup?: string

		// Use this to override the default service endpoint URL
		batch?: string

		// Use this to override the default service endpoint URL
		bcmdataexports?: string

		// Use this to override the default service endpoint URL
		beanstalk?: string

		// Use this to override the default service endpoint URL
		bedrock?: string

		// Use this to override the default service endpoint URL
		bedrockagent?: string

		// Use this to override the default service endpoint URL
		bedrockagentcore?: string

		// Use this to override the default service endpoint URL
		billing?: string

		// Use this to override the default service endpoint URL
		budgets?: string

		// Use this to override the default service endpoint URL
		ce?: string

		// Use this to override the default service endpoint URL
		chatbot?: string

		// Use this to override the default service endpoint URL
		chime?: string

		// Use this to override the default service endpoint URL
		chimesdkmediapipelines?: string

		// Use this to override the default service endpoint URL
		chimesdkvoice?: string

		// Use this to override the default service endpoint URL
		cleanrooms?: string

		// Use this to override the default service endpoint URL
		cloud9?: string

		// Use this to override the default service endpoint URL
		cloudcontrol?: string

		// Use this to override the default service endpoint URL
		cloudcontrolapi?: string

		// Use this to override the default service endpoint URL
		cloudformation?: string

		// Use this to override the default service endpoint URL
		cloudfront?: string

		// Use this to override the default service endpoint URL
		cloudfrontkeyvaluestore?: string

		// Use this to override the default service endpoint URL
		cloudhsm?: string

		// Use this to override the default service endpoint URL
		cloudhsmv2?: string

		// Use this to override the default service endpoint URL
		cloudsearch?: string

		// Use this to override the default service endpoint URL
		cloudtrail?: string

		// Use this to override the default service endpoint URL
		cloudwatch?: string

		// Use this to override the default service endpoint URL
		cloudwatchevents?: string

		// Use this to override the default service endpoint URL
		cloudwatchevidently?: string

		// Use this to override the default service endpoint URL
		cloudwatchlog?: string

		// Use this to override the default service endpoint URL
		cloudwatchlogs?: string

		// Use this to override the default service endpoint URL
		cloudwatchobservabilityaccessmanager?: string

		// Use this to override the default service endpoint URL
		cloudwatchrum?: string

		// Use this to override the default service endpoint URL
		codeartifact?: string

		// Use this to override the default service endpoint URL
		codebuild?: string

		// Use this to override the default service endpoint URL
		codecatalyst?: string

		// Use this to override the default service endpoint URL
		codecommit?: string

		// Use this to override the default service endpoint URL
		codeconnections?: string

		// Use this to override the default service endpoint URL
		codedeploy?: string

		// Use this to override the default service endpoint URL
		codeguruprofiler?: string

		// Use this to override the default service endpoint URL
		codegurureviewer?: string

		// Use this to override the default service endpoint URL
		codepipeline?: string

		// Use this to override the default service endpoint URL
		codestarconnections?: string

		// Use this to override the default service endpoint URL
		codestarnotifications?: string

		// Use this to override the default service endpoint URL
		cognitoidentity?: string

		// Use this to override the default service endpoint URL
		cognitoidentityprovider?: string

		// Use this to override the default service endpoint URL
		cognitoidp?: string

		// Use this to override the default service endpoint URL
		comprehend?: string

		// Use this to override the default service endpoint URL
		computeoptimizer?: string

		// Use this to override the default service endpoint URL
		config?: string

		// Use this to override the default service endpoint URL
		configservice?: string

		// Use this to override the default service endpoint URL
		connect?: string

		// Use this to override the default service endpoint URL
		connectcases?: string

		// Use this to override the default service endpoint URL
		controltower?: string

		// Use this to override the default service endpoint URL
		costandusagereportservice?: string

		// Use this to override the default service endpoint URL
		costexplorer?: string

		// Use this to override the default service endpoint URL
		costoptimizationhub?: string

		// Use this to override the default service endpoint URL
		cur?: string

		// Use this to override the default service endpoint URL
		customerprofiles?: string

		// Use this to override the default service endpoint URL
		databasemigration?: string

		// Use this to override the default service endpoint URL
		databasemigrationservice?: string

		// Use this to override the default service endpoint URL
		databrew?: string

		// Use this to override the default service endpoint URL
		dataexchange?: string

		// Use this to override the default service endpoint URL
		datapipeline?: string

		// Use this to override the default service endpoint URL
		datasync?: string

		// Use this to override the default service endpoint URL
		datazone?: string

		// Use this to override the default service endpoint URL
		dax?: string

		// Use this to override the default service endpoint URL
		deploy?: string

		// Use this to override the default service endpoint URL
		detective?: string

		// Use this to override the default service endpoint URL
		devicefarm?: string

		// Use this to override the default service endpoint URL
		devopsguru?: string

		// Use this to override the default service endpoint URL
		directconnect?: string

		// Use this to override the default service endpoint URL
		directoryservice?: string

		// Use this to override the default service endpoint URL
		dlm?: string

		// Use this to override the default service endpoint URL
		dms?: string

		// Use this to override the default service endpoint URL
		docdb?: string

		// Use this to override the default service endpoint URL
		docdbelastic?: string

		// Use this to override the default service endpoint URL
		drs?: string

		// Use this to override the default service endpoint URL
		ds?: string

		// Use this to override the default service endpoint URL
		dsql?: string

		// Use this to override the default service endpoint URL
		dynamodb?: string

		// Use this to override the default service endpoint URL
		ec2?: string

		// Use this to override the default service endpoint URL
		ecr?: string

		// Use this to override the default service endpoint URL
		ecrpublic?: string

		// Use this to override the default service endpoint URL
		ecs?: string

		// Use this to override the default service endpoint URL
		efs?: string

		// Use this to override the default service endpoint URL
		eks?: string

		// Use this to override the default service endpoint URL
		elasticache?: string

		// Use this to override the default service endpoint URL
		elasticbeanstalk?: string

		// Use this to override the default service endpoint URL
		elasticloadbalancing?: string

		// Use this to override the default service endpoint URL
		elasticloadbalancingv2?: string

		// Use this to override the default service endpoint URL
		elasticsearch?: string

		// Use this to override the default service endpoint URL
		elasticsearchservice?: string

		// Use this to override the default service endpoint URL
		elastictranscoder?: string

		// Use this to override the default service endpoint URL
		elb?: string

		// Use this to override the default service endpoint URL
		elbv2?: string

		// Use this to override the default service endpoint URL
		emr?: string

		// Use this to override the default service endpoint URL
		emrcontainers?: string

		// Use this to override the default service endpoint URL
		emrserverless?: string

		// Use this to override the default service endpoint URL
		es?: string

		// Use this to override the default service endpoint URL
		eventbridge?: string

		// Use this to override the default service endpoint URL
		events?: string

		// Use this to override the default service endpoint URL
		evidently?: string

		// Use this to override the default service endpoint URL
		evs?: string

		// Use this to override the default service endpoint URL
		finspace?: string

		// Use this to override the default service endpoint URL
		firehose?: string

		// Use this to override the default service endpoint URL
		fis?: string

		// Use this to override the default service endpoint URL
		fms?: string

		// Use this to override the default service endpoint URL
		fsx?: string

		// Use this to override the default service endpoint URL
		gamelift?: string

		// Use this to override the default service endpoint URL
		glacier?: string

		// Use this to override the default service endpoint URL
		globalaccelerator?: string

		// Use this to override the default service endpoint URL
		glue?: string

		// Use this to override the default service endpoint URL
		gluedatabrew?: string

		// Use this to override the default service endpoint URL
		grafana?: string

		// Use this to override the default service endpoint URL
		greengrass?: string

		// Use this to override the default service endpoint URL
		groundstation?: string

		// Use this to override the default service endpoint URL
		guardduty?: string

		// Use this to override the default service endpoint URL
		healthlake?: string

		// Use this to override the default service endpoint URL
		iam?: string

		// Use this to override the default service endpoint URL
		identitystore?: string

		// Use this to override the default service endpoint URL
		imagebuilder?: string

		// Use this to override the default service endpoint URL
		inspector?: string

		// Use this to override the default service endpoint URL
		inspector2?: string

		// Use this to override the default service endpoint URL
		inspectorv2?: string

		// Use this to override the default service endpoint URL
		internetmonitor?: string

		// Use this to override the default service endpoint URL
		invoicing?: string

		// Use this to override the default service endpoint URL
		iot?: string

		// Use this to override the default service endpoint URL
		ivs?: string

		// Use this to override the default service endpoint URL
		ivschat?: string

		// Use this to override the default service endpoint URL
		kafka?: string

		// Use this to override the default service endpoint URL
		kafkaconnect?: string

		// Use this to override the default service endpoint URL
		kendra?: string

		// Use this to override the default service endpoint URL
		keyspaces?: string

		// Use this to override the default service endpoint URL
		kinesis?: string

		// Use this to override the default service endpoint URL
		kinesisanalytics?: string

		// Use this to override the default service endpoint URL
		kinesisanalyticsv2?: string

		// Use this to override the default service endpoint URL
		kinesisvideo?: string

		// Use this to override the default service endpoint URL
		kms?: string

		// Use this to override the default service endpoint URL
		lakeformation?: string

		// Use this to override the default service endpoint URL
		lambda?: string

		// Use this to override the default service endpoint URL
		launchwizard?: string

		// Use this to override the default service endpoint URL
		lex?: string

		// Use this to override the default service endpoint URL
		lexmodelbuilding?: string

		// Use this to override the default service endpoint URL
		lexmodelbuildingservice?: string

		// Use this to override the default service endpoint URL
		lexmodels?: string

		// Use this to override the default service endpoint URL
		lexmodelsv2?: string

		// Use this to override the default service endpoint URL
		lexv2models?: string

		// Use this to override the default service endpoint URL
		licensemanager?: string

		// Use this to override the default service endpoint URL
		lightsail?: string

		// Use this to override the default service endpoint URL
		location?: string

		// Use this to override the default service endpoint URL
		locationservice?: string

		// Use this to override the default service endpoint URL
		logs?: string

		// Use this to override the default service endpoint URL
		lookoutmetrics?: string

		// Use this to override the default service endpoint URL
		m2?: string

		// Use this to override the default service endpoint URL
		macie2?: string

		// Use this to override the default service endpoint URL
		managedgrafana?: string

		// Use this to override the default service endpoint URL
		mediaconnect?: string

		// Use this to override the default service endpoint URL
		mediaconvert?: string

		// Use this to override the default service endpoint URL
		medialive?: string

		// Use this to override the default service endpoint URL
		mediapackage?: string

		// Use this to override the default service endpoint URL
		mediapackagev2?: string

		// Use this to override the default service endpoint URL
		mediapackagevod?: string

		// Use this to override the default service endpoint URL
		mediastore?: string

		// Use this to override the default service endpoint URL
		memorydb?: string

		// Use this to override the default service endpoint URL
		mgn?: string

		// Use this to override the default service endpoint URL
		mq?: string

		// Use this to override the default service endpoint URL
		msk?: string

		// Use this to override the default service endpoint URL
		mwaa?: string

		// Use this to override the default service endpoint URL
		neptune?: string

		// Use this to override the default service endpoint URL
		neptunegraph?: string

		// Use this to override the default service endpoint URL
		networkfirewall?: string

		// Use this to override the default service endpoint URL
		networkflowmonitor?: string

		// Use this to override the default service endpoint URL
		networkmanager?: string

		// Use this to override the default service endpoint URL
		networkmonitor?: string

		// Use this to override the default service endpoint URL
		notifications?: string

		// Use this to override the default service endpoint URL
		notificationscontacts?: string

		// Use this to override the default service endpoint URL
		oam?: string

		// Use this to override the default service endpoint URL
		observabilityadmin?: string

		// Use this to override the default service endpoint URL
		odb?: string

		// Use this to override the default service endpoint URL
		opensearch?: string

		// Use this to override the default service endpoint URL
		opensearchingestion?: string

		// Use this to override the default service endpoint URL
		opensearchserverless?: string

		// Use this to override the default service endpoint URL
		opensearchservice?: string

		// Use this to override the default service endpoint URL
		organizations?: string

		// Use this to override the default service endpoint URL
		osis?: string

		// Use this to override the default service endpoint URL
		outposts?: string

		// Use this to override the default service endpoint URL
		paymentcryptography?: string

		// Use this to override the default service endpoint URL
		pcaconnectorad?: string

		// Use this to override the default service endpoint URL
		pcs?: string

		// Use this to override the default service endpoint URL
		pinpoint?: string

		// Use this to override the default service endpoint URL
		pinpointsmsvoicev2?: string

		// Use this to override the default service endpoint URL
		pipes?: string

		// Use this to override the default service endpoint URL
		polly?: string

		// Use this to override the default service endpoint URL
		pricing?: string

		// Use this to override the default service endpoint URL
		prometheus?: string

		// Use this to override the default service endpoint URL
		prometheusservice?: string

		// Use this to override the default service endpoint URL
		qbusiness?: string

		// Use this to override the default service endpoint URL
		qldb?: string

		// Use this to override the default service endpoint URL
		quicksight?: string

		// Use this to override the default service endpoint URL
		ram?: string

		// Use this to override the default service endpoint URL
		rbin?: string

		// Use this to override the default service endpoint URL
		rds?: string

		// Use this to override the default service endpoint URL
		recyclebin?: string

		// Use this to override the default service endpoint URL
		redshift?: string

		// Use this to override the default service endpoint URL
		redshiftdata?: string

		// Use this to override the default service endpoint URL
		redshiftdataapiservice?: string

		// Use this to override the default service endpoint URL
		redshiftserverless?: string

		// Use this to override the default service endpoint URL
		rekognition?: string

		// Use this to override the default service endpoint URL
		resiliencehub?: string

		// Use this to override the default service endpoint URL
		resourceexplorer2?: string

		// Use this to override the default service endpoint URL
		resourcegroups?: string

		// Use this to override the default service endpoint URL
		resourcegroupstagging?: string

		// Use this to override the default service endpoint URL
		resourcegroupstaggingapi?: string

		// Use this to override the default service endpoint URL
		rolesanywhere?: string

		// Use this to override the default service endpoint URL
		route53?: string

		// Use this to override the default service endpoint URL
		route53domains?: string

		// Use this to override the default service endpoint URL
		route53profiles?: string

		// Use this to override the default service endpoint URL
		route53recoverycontrolconfig?: string

		// Use this to override the default service endpoint URL
		route53recoveryreadiness?: string

		// Use this to override the default service endpoint URL
		route53resolver?: string

		// Use this to override the default service endpoint URL
		rum?: string

		// Use this to override the default service endpoint URL
		s3?: string

		// Use this to override the default service endpoint URL
		s3api?: string

		// Use this to override the default service endpoint URL
		s3control?: string

		// Use this to override the default service endpoint URL
		s3outposts?: string

		// Use this to override the default service endpoint URL
		s3tables?: string

		// Use this to override the default service endpoint URL
		s3vectors?: string

		// Use this to override the default service endpoint URL
		sagemaker?: string

		// Use this to override the default service endpoint URL
		scheduler?: string

		// Use this to override the default service endpoint URL
		schemas?: string

		// Use this to override the default service endpoint URL
		secretsmanager?: string

		// Use this to override the default service endpoint URL
		securityhub?: string

		// Use this to override the default service endpoint URL
		securitylake?: string

		// Use this to override the default service endpoint URL
		serverlessapplicationrepository?: string

		// Use this to override the default service endpoint URL
		serverlessapprepo?: string

		// Use this to override the default service endpoint URL
		serverlessrepo?: string

		// Use this to override the default service endpoint URL
		servicecatalog?: string

		// Use this to override the default service endpoint URL
		servicecatalogappregistry?: string

		// Use this to override the default service endpoint URL
		servicediscovery?: string

		// Use this to override the default service endpoint URL
		servicequotas?: string

		// Use this to override the default service endpoint URL
		ses?: string

		// Use this to override the default service endpoint URL
		sesv2?: string

		// Use this to override the default service endpoint URL
		sfn?: string

		// Use this to override the default service endpoint URL
		shield?: string

		// Use this to override the default service endpoint URL
		signer?: string

		// Use this to override the default service endpoint URL
		sns?: string

		// Use this to override the default service endpoint URL
		sqs?: string

		// Use this to override the default service endpoint URL
		ssm?: string

		// Use this to override the default service endpoint URL
		ssmcontacts?: string

		// Use this to override the default service endpoint URL
		ssmincidents?: string

		// Use this to override the default service endpoint URL
		ssmquicksetup?: string

		// Use this to override the default service endpoint URL
		ssmsap?: string

		// Use this to override the default service endpoint URL
		sso?: string

		// Use this to override the default service endpoint URL
		ssoadmin?: string

		// Use this to override the default service endpoint URL
		stepfunctions?: string

		// Use this to override the default service endpoint URL
		storagegateway?: string

		// Use this to override the default service endpoint URL
		sts?: string

		// Use this to override the default service endpoint URL
		swf?: string

		// Use this to override the default service endpoint URL
		synthetics?: string

		// Use this to override the default service endpoint URL
		taxsettings?: string

		// Use this to override the default service endpoint URL
		timestreaminfluxdb?: string

		// Use this to override the default service endpoint URL
		timestreamquery?: string

		// Use this to override the default service endpoint URL
		timestreamwrite?: string

		// Use this to override the default service endpoint URL
		transcribe?: string

		// Use this to override the default service endpoint URL
		transcribeservice?: string

		// Use this to override the default service endpoint URL
		transfer?: string

		// Use this to override the default service endpoint URL
		verifiedpermissions?: string

		// Use this to override the default service endpoint URL
		vpclattice?: string

		// Use this to override the default service endpoint URL
		waf?: string

		// Use this to override the default service endpoint URL
		wafregional?: string

		// Use this to override the default service endpoint URL
		wafv2?: string

		// Use this to override the default service endpoint URL
		wellarchitected?: string

		// Use this to override the default service endpoint URL
		workmail?: string

		// Use this to override the default service endpoint URL
		workspaces?: string

		// Use this to override the default service endpoint URL
		workspacesweb?: string

		// Use this to override the default service endpoint URL
		xray?: string
	})

	#ignore_tags: close({
		// Resource tag key prefixes to ignore across all resources. Can
		// also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES
		// environment variable.
		key_prefixes?: [...string]

		// Resource tag keys to ignore across all resources. Can also be
		// configured with the TF_AWS_IGNORE_TAGS_KEYS environment
		// variable.
		keys?: [...string]
	})
}
