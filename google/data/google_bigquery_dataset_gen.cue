package data

#google_bigquery_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_bigquery_dataset")
	close({
		// An array of objects that define dataset access for one or more
		// entities.
		access?: [...close({
			condition?: [...close({
				description?: string
				expression?:  string
				location?:    string
				title?:       string
			})]
			dataset?: [...close({
				dataset?: [...close({
					dataset_id?: string
					project_id?: string
				})]
				target_types?: [...string]
			})]
			domain?:         string
			group_by_email?: string
			iam_member?:     string
			role?:           string
			routine?: [...close({
				dataset_id?: string
				project_id?: string
				routine_id?: string
			})]
			special_group?: string
			user_by_email?: string
			view?: [...close({
				dataset_id?: string
				project_id?: string
				table_id?:   string
			})]
		})]

		// The time when this dataset was created, in milliseconds since
		// the
		// epoch.
		creation_time?: number

		// A unique ID for this dataset, without the project name. The ID
		// must contain only letters (a-z, A-Z), numbers (0-9), or
		// underscores (_). The maximum length is 1,024 characters.
		dataset_id!: string

		// Defines the default collation specification of future tables
		// created
		// in the dataset. If a table is created in this dataset without
		// table-level
		// default collation, then the table inherits the dataset default
		// collation,
		// which is applied to the string fields that do not have explicit
		// collation
		// specified. A change to this field affects only tables created
		// afterwards,
		// and does not alter the existing tables.
		//
		// The following values are supported:
		// - 'und:ci': undetermined locale, case insensitive.
		// - '': empty string. Default to case-sensitive behavior.
		default_collation?: string

		// The default encryption key for all tables in the dataset. Once
		// this property is set,
		// all newly-created partitioned tables in the dataset will have
		// encryption key set to
		// this value, unless table creation request (or query) overrides
		// the key.
		default_encryption_configuration?: [...close({
			kms_key_name?: string
		})]

		// The default partition expiration for all partitioned tables in
		// the dataset, in milliseconds.
		// Once this property is set, all newly-created partitioned tables
		// in
		// the dataset will have an 'expirationMs' property in the
		// 'timePartitioning'
		// settings set to this value, and changing the value will only
		// affect new tables, not existing ones. The storage in a
		// partition will
		// have an expiration time of its partition time plus this value.
		// Setting this property overrides the use of
		// 'defaultTableExpirationMs'
		// for partitioned tables: only one of 'defaultTableExpirationMs'
		// and
		// 'defaultPartitionExpirationMs' will be used for any new
		// partitioned
		// table. If you provide an explicit
		// 'timePartitioning.expirationMs' when
		// creating or updating a partitioned table, that value takes
		// precedence
		// over the default partition expiration time indicated by this
		// property.
		default_partition_expiration_ms?: number

		// The default lifetime of all tables in the dataset, in
		// milliseconds.
		// The minimum value is 3600000 milliseconds (one hour).
		// Once this property is set, all newly-created tables in the
		// dataset
		// will have an 'expirationTime' property set to the creation time
		// plus
		// the value in this property, and changing the value will only
		// affect
		// new tables, not existing ones. When the 'expirationTime' for a
		// given
		// table is reached, that table will be deleted automatically.
		// If a table's 'expirationTime' is modified or removed before the
		// table expires, or if you provide an explicit 'expirationTime'
		// when
		// creating a table, that value takes precedence over the default
		// expiration time indicated by this property.
		default_table_expiration_ms?: number

		// If set to 'true', delete all the tables in the
		// dataset when destroying the resource; otherwise,
		// destroying the resource will fail if tables are present.
		delete_contents_on_destroy?: bool

		// A user-friendly description of the dataset
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A hash of the resource.
		etag?: string

		// Options defining open source compatible datasets living in the
		// BigQuery catalog. Contains
		// metadata of open source database, schema or namespace
		// represented by the current dataset.
		external_catalog_dataset_options?: [...close({
			default_storage_location_uri?: string
			parameters?: [string]: string
		})]

		// Information about the external metadata storage where the
		// dataset is defined.
		external_dataset_reference?: [...close({
			connection?:      string
			external_source?: string
		})]

		// A descriptive name for the dataset
		friendly_name?: string
		id?:            string

		// TRUE if the dataset and its table names are case-insensitive,
		// otherwise FALSE.
		// By default, this is FALSE, which means the dataset and its
		// table names are
		// case-sensitive. This field does not affect routine references.
		is_case_insensitive?: bool

		// The labels associated with this dataset. You can use these to
		// organize and group your datasets.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The date when this dataset or any of its tables was last
		// modified, in
		// milliseconds since the epoch.
		last_modified_time?: number

		// The geographic location where the dataset should reside.
		// See [official
		// docs](https://cloud.google.com/bigquery/docs/dataset-locations).
		// There are two types of locations, regional or multi-regional. A
		// regional
		// location is a specific geographic place, such as Tokyo, and a
		// multi-regional
		// location is a large geographic area, such as the United States,
		// that
		// contains at least two geographic places.
		// The default value is multi-regional location 'US'.
		// Changing this forces a new resource to be created.
		location?: string

		// Defines the time travel window in hours. The value can be from
		// 48 to 168 hours (2 to 7 days).
		max_time_travel_hours?: string
		project?:               string

		// The tags attached to this table. Tag keys are globally unique.
		// Tag key is expected to be
		// in the namespaced format, for example
		// "123456789012/environment" where 123456789012 is the
		// ID of the parent organization or project resource for this tag
		// key. Tag value is expected
		// to be the short name, for example "Production". See [Tag
		// definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
		// for more details.
		resource_tags?: [string]: string

		// Specifies the storage billing model for the dataset.
		// Set this flag value to LOGICAL to use logical bytes for storage
		// billing,
		// or to PHYSICAL to use physical bytes instead.
		//
		// LOGICAL is the default if this flag isn't specified.
		storage_billing_model?: string
		self_link?:             string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
