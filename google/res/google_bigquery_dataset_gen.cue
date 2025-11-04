package res

import "list"

#google_bigquery_dataset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_dataset")
	close({
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
		access?: matchN(1, [#access, [...#access]])
		default_encryption_configuration?: matchN(1, [#default_encryption_configuration, list.MaxItems(1) & [...#default_encryption_configuration]])
		external_catalog_dataset_options?: matchN(1, [#external_catalog_dataset_options, list.MaxItems(1) & [...#external_catalog_dataset_options]])
		external_dataset_reference?: matchN(1, [#external_dataset_reference, list.MaxItems(1) & [...#external_dataset_reference]])
		timeouts?: #timeouts

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
		self_link?: string

		// Specifies the storage billing model for the dataset.
		// Set this flag value to LOGICAL to use logical bytes for storage
		// billing,
		// or to PHYSICAL to use physical bytes instead.
		//
		// LOGICAL is the default if this flag isn't specified.
		storage_billing_model?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#access: close({
		// A domain to grant access to. Any users signed in with the
		// domain specified will be granted the specified access
		domain?: string

		// An email address of a Google Group to grant access to.
		group_by_email?: string

		// Some other type of member that appears in the IAM Policy but
		// isn't a user,
		// group, domain, or special group. For example: 'allUsers'
		iam_member?: string

		// Describes the rights granted to the user specified by the other
		// member of the access object. Basic, predefined, and custom
		// roles
		// are supported. Predefined roles that have equivalent basic
		// roles
		// are swapped by the API to their basic counterparts. See
		// [official
		// docs](https://cloud.google.com/bigquery/docs/access-control).
		role?: string

		// A special group to grant access to. Possible values include:
		// * 'projectOwners': Owners of the enclosing project.
		// * 'projectReaders': Readers of the enclosing project.
		// * 'projectWriters': Writers of the enclosing project.
		// * 'allAuthenticatedUsers': All authenticated BigQuery users.
		special_group?: string
		condition?: matchN(1, [_#defs."/$defs/access/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/access/$defs/condition"]])
		dataset?: matchN(1, [_#defs."/$defs/access/$defs/dataset", list.MaxItems(1) & [..._#defs."/$defs/access/$defs/dataset"]])
		routine?: matchN(1, [_#defs."/$defs/access/$defs/routine", list.MaxItems(1) & [..._#defs."/$defs/access/$defs/routine"]])

		// An email address of a user to grant access to. For example:
		// fred@example.com
		user_by_email?: string
		view?: matchN(1, [_#defs."/$defs/access/$defs/view", list.MaxItems(1) & [..._#defs."/$defs/access/$defs/view"]])
	})

	#default_encryption_configuration: close({
		// Describes the Cloud KMS encryption key that will be used to
		// protect destination
		// BigQuery table. The BigQuery Service Account associated with
		// your project requires
		// access to this encryption key.
		kms_key_name!: string
	})

	#external_catalog_dataset_options: close({
		// The storage location URI for all tables in the dataset.
		// Equivalent to hive metastore's
		// database locationUri. Maximum length of 1024 characters.
		default_storage_location_uri?: string

		// A map of key value pairs defining the parameters and properties
		// of the open source schema.
		// Maximum size of 2Mib.
		parameters?: [string]: string
	})

	#external_dataset_reference: close({
		// The connection id that is used to access the externalSource.
		// Format:
		// projects/{projectId}/locations/{locationId}/connections/{connectionId}
		connection!: string

		// External source that backs this dataset.
		external_source!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/access/$defs/condition": close({
		// Description of the expression. This is a longer text which
		// describes the expression,
		// e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file
		// name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		// This can be used e.g. in UIs which allow to enter the
		// expression.
		title?: string
	})

	_#defs: "/$defs/access/$defs/dataset": close({
		dataset!: matchN(1, [_#defs."/$defs/access/$defs/dataset/$defs/dataset", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/access/$defs/dataset/$defs/dataset"]])

		// Which resources in the dataset this entry applies to.
		// Currently, only views are supported,
		// but additional target types may be added in the future.
		// Possible values: VIEWS
		target_types!: [...string]
	})

	_#defs: "/$defs/access/$defs/dataset/$defs/dataset": close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string
	})

	_#defs: "/$defs/access/$defs/routine": close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string

		// The ID of the routine. The ID must contain only letters (a-z,
		// A-Z), numbers (0-9), or underscores (_). The maximum length
		// is 256 characters.
		routine_id!: string
	})

	_#defs: "/$defs/access/$defs/view": close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string

		// The ID of the table. The ID must contain only letters (a-z,
		// A-Z), numbers (0-9), or underscores (_). The maximum length
		// is 1,024 characters.
		table_id!: string
	})
}
