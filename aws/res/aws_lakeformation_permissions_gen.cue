package res

import "list"

#aws_lakeformation_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lakeformation_permissions")
	catalog_id?:       string
	catalog_resource?: bool
	id?:               string
	permissions: [...string]
	permissions_with_grant_option?: [...string]
	principal:           string
	data_location?:      #data_location | list.MaxItems(1) & [...#data_location]
	database?:           #database | list.MaxItems(1) & [...#database]
	lf_tag?:             #lf_tag | list.MaxItems(1) & [...#lf_tag]
	lf_tag_policy?:      #lf_tag_policy | list.MaxItems(1) & [...#lf_tag_policy]
	table?:              #table | list.MaxItems(1) & [...#table]
	table_with_columns?: #table_with_columns | list.MaxItems(1) & [...#table_with_columns]

	#data_location: {
		arn:         string
		catalog_id?: string
	}

	#database: {
		catalog_id?: string
		name:        string
	}

	#lf_tag: {
		catalog_id?: string
		key:         string
		values: [...string]
	}

	#lf_tag_policy: {
		catalog_id?:   string
		resource_type: string
		expression?:   #lf_tag_policy.#expression | [_, ...] & [...#lf_tag_policy.#expression]

		#expression: {
			key: string
			values: [...string]
		}
	}

	#table: {
		catalog_id?:   string
		database_name: string
		name?:         string
		wildcard?:     bool
	}

	#table_with_columns: {
		catalog_id?: string
		column_names?: [...string]
		database_name: string
		excluded_column_names?: [...string]
		name:      string
		wildcard?: bool
	}
}
