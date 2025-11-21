package res

#elasticstack_elasticsearch_ml_anomaly_detection_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ml_anomaly_detection_job")
	close({
		// Advanced configuration option. Specifies whether this job can
		// open when there is insufficient machine learning node capacity
		// for it to be immediately assigned to a node.
		allow_lazy_open?: bool

		// Specifies how to analyze the data. After you create a job, you
		// cannot change the analysis configuration; all the properties
		// are informational.
		analysis_config!: close({
			// The size of the interval that the analysis is aggregated into,
			// typically between 15m and 1h. If the anomaly detector is
			// expecting to see data at near real-time frequency, then the
			// bucket_span should be set to a value around 10 times the time
			// between ingested documents. For example, if data comes every
			// second, bucket_span should be 10s; if data comes every 5
			// minutes, bucket_span should be 50m. For sparse or batch data,
			// use larger bucket_span values.
			bucket_span?: string

			// For categorization jobs only. The name of the field to
			// categorize.
			categorization_field_name?: string

			// For categorization jobs only. An array of regular expressions.
			// A categorization message is matched against each regex in the
			// order they are listed in the array.
			categorization_filters?: [...string]

			// Detector configuration objects. Detectors identify the anomaly
			// detection functions and the fields on which they operate.
			detectors!: matchN(1, [close({
				// The field used to split the data. In particular, this property
				// is used for analyzing the splits with respect to their own
				// history. It is used for finding unusual values in the context
				// of the split.
				by_field_name?: string

				// A description of the detector.
				detector_description?: string

				// Contains one of the following values: all, none, by, or over.
				exclude_frequent?: string

				// Custom rules enable you to customize the way detectors operate.
				custom_rules?: matchN(1, [close({
					// The set of actions to be triggered when the rule applies. If
					// more than one action is specified the effects of all actions
					// are combined.
					actions?: [...string]

					// An array of numeric conditions when the rule applies.
					conditions?: matchN(1, [close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					}), [...close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					})]])
				}), [...close({
					// The set of actions to be triggered when the rule applies. If
					// more than one action is specified the effects of all actions
					// are combined.
					actions?: [...string]

					// An array of numeric conditions when the rule applies.
					conditions?: matchN(1, [close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					}), [...close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					})]])
				})]])

				// The field that the detector function analyzes. Some functions
				// require a field. Functions that don't require a field are
				// count, rare, and freq_rare.
				field_name?: string

				// The analysis function that is used. For example, count, rare,
				// mean, min, max, sum.
				function!: string

				// The field used to split the data. In particular, this property
				// is used for analyzing the splits with respect to the history
				// of all splits. It is used for finding unusual values in the
				// population of all splits.
				over_field_name?: string

				// The field used to segment the analysis. When you use this
				// property, you have completely independent baselines for each
				// value of this field.
				partition_field_name?: string

				// Defines whether a new series is used as the null series when
				// there is no value for the by or partition fields.
				use_null?: bool
			}), [...close({
				// The field used to split the data. In particular, this property
				// is used for analyzing the splits with respect to their own
				// history. It is used for finding unusual values in the context
				// of the split.
				by_field_name?: string

				// A description of the detector.
				detector_description?: string

				// Contains one of the following values: all, none, by, or over.
				exclude_frequent?: string

				// Custom rules enable you to customize the way detectors operate.
				custom_rules?: matchN(1, [close({
					// The set of actions to be triggered when the rule applies. If
					// more than one action is specified the effects of all actions
					// are combined.
					actions?: [...string]

					// An array of numeric conditions when the rule applies.
					conditions?: matchN(1, [close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					}), [...close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					})]])
				}), [...close({
					// The set of actions to be triggered when the rule applies. If
					// more than one action is specified the effects of all actions
					// are combined.
					actions?: [...string]

					// An array of numeric conditions when the rule applies.
					conditions?: matchN(1, [close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					}), [...close({
						// Specifies the result property to which the condition applies.
						applies_to!: string

						// Specifies the condition operator.
						operator!: string

						// The value that is compared against the applies_to field using
						// the operator.
						value!: number
					})]])
				})]])

				// The field that the detector function analyzes. Some functions
				// require a field. Functions that don't require a field are
				// count, rare, and freq_rare.
				field_name?: string

				// The analysis function that is used. For example, count, rare,
				// mean, min, max, sum.
				function!: string

				// The field used to split the data. In particular, this property
				// is used for analyzing the splits with respect to the history
				// of all splits. It is used for finding unusual values in the
				// population of all splits.
				over_field_name?: string

				// The field used to segment the analysis. When you use this
				// property, you have completely independent baselines for each
				// value of this field.
				partition_field_name?: string

				// Defines whether a new series is used as the null series when
				// there is no value for the by or partition fields.
				use_null?: bool
			})]])

			// A comma separated list of influencer field names. Typically
			// these can be the by, over, or partition fields that are used
			// in the detector configuration.
			influencers?: [...string]

			// The size of the window in which to expect data that is out of
			// time order. If you specify a non-zero value, it must be
			// greater than or equal to one second.
			latency?: string

			// Advanced configuration option. The time interval (in days)
			// between pruning the model.
			model_prune_window?: string

			// This functionality is reserved for internal use. It is not
			// supported for use in customer environments and is not subject
			// to the support SLA of official GA features.
			multivariate_by_fields?: bool

			// Settings related to how categorization interacts with partition
			// fields.
			per_partition_categorization?: close({
				// To enable this setting, you must also set the
				// partition_field_name property to the same value in every
				// detector that uses the keyword mlcategory. Otherwise, job
				// creation fails.
				enabled?: bool

				// This setting can be set to true only if per-partition
				// categorization is enabled.
				stop_on_warn?: bool
			})

			// If this property is specified, the data that is fed to the job
			// is expected to be pre-summarized.
			summary_count_field_name?: string
		})

		// Advanced configuration option. The time between each periodic
		// persistence of the model.
		background_persist_interval?: string

		// Limits can be applied for the resources required to hold the
		// mathematical models in memory.
		analysis_limits?: close({
			// The maximum number of examples stored per category in memory
			// and in the results data store.
			categorization_examples_limit?: number

			// The approximate maximum amount of memory resources that are
			// required for analytical processing.
			model_memory_limit?: string
		})

		// The time the job was created.
		create_time?: string

		// Advanced configuration option. Contains custom meta data about
		// the job. For example, it can contain custom URL information.
		custom_settings?: string

		// Advanced configuration option, which affects the automatic
		// removal of old model snapshots for this job.
		daily_model_snapshot_retention_after_days?: number

		// A description of the job.
		description?: string

		// Defines the format of the input data when you send data to the
		// job by using the post data API.
		data_description!: close({
			// The name of the field that contains the timestamp.
			time_field?: string

			// The time format, which can be epoch, epoch_ms, or a custom
			// pattern.
			time_format?: string
		})

		// A set of job groups. A job can belong to no groups or many.
		groups?: [...string]

		// Internal identifier of the resource
		id?: string

		// The identifier for the anomaly detection job. This identifier
		// can contain lowercase alphanumeric characters (a-z and 0-9),
		// hyphens, and underscores. It must start and end with
		// alphanumeric characters.
		job_id!: string

		// Reserved for future use, currently set to anomaly_detector.
		job_type?: string

		// The version of Elasticsearch when the job was created.
		job_version?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// A numerical character string that uniquely identifies the model
		// snapshot.
		model_snapshot_id?: string

		// This advanced configuration option stores model information
		// along with the results. It provides a more detailed view into
		// anomaly detection.
		model_plot_config?: close({
			// If true, enables calculation and storage of the model change
			// annotations for each entity that is being analyzed.
			annotations_enabled?: bool

			// If true, enables calculation and storage of the model bounds
			// for each entity that is being analyzed.
			enabled?: bool

			// Limits data collection to this comma separated list of
			// partition or by field values. If terms are not specified or it
			// is an empty string, no filtering is applied.
			terms?: string
		})

		// Advanced configuration option, which affects the automatic
		// removal of old model snapshots for this job.
		model_snapshot_retention_days?: number

		// Advanced configuration option. The period over which
		// adjustments to the score are applied, as new data is seen.
		renormalization_window_days?: number

		// A text string that affects the name of the machine learning
		// results index.
		results_index_name?: string

		// Advanced configuration option. The period of time (in days)
		// that results are retained.
		results_retention_days?: number
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
}
