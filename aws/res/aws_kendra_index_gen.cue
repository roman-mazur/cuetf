package res

import "list"

#aws_kendra_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_kendra_index")
	close({
		arn?:           string
		created_at?:    string
		description?:   string
		edition?:       string
		error_message?: string
		id?:            string
		index_statistics?: [...close({
			faq_statistics?: [...close({
				indexed_question_answers_count?: number
			})]
			text_document_statistics?: [...close({
				indexed_text_bytes?:           number
				indexed_text_documents_count?: number
			})]
		})]
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		capacity_units?: matchN(1, [#capacity_units, list.MaxItems(1) & [...#capacity_units]])
		role_arn!: string
		document_metadata_configuration_updates?: matchN(1, [#document_metadata_configuration_updates, list.MaxItems(500) & [...#document_metadata_configuration_updates]])
		status?: string
		server_side_encryption_configuration?: matchN(1, [#server_side_encryption_configuration, list.MaxItems(1) & [...#server_side_encryption_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		updated_at?: string
		timeouts?:   #timeouts
		user_group_resolution_configuration?: matchN(1, [#user_group_resolution_configuration, list.MaxItems(1) & [...#user_group_resolution_configuration]])
		user_context_policy?: string
		user_token_configurations?: matchN(1, [#user_token_configurations, list.MaxItems(1) & [...#user_token_configurations]])
	})

	#capacity_units: close({
		query_capacity_units?:   number
		storage_capacity_units?: number
	})

	#document_metadata_configuration_updates: close({
		relevance?: matchN(1, [_#defs."/$defs/document_metadata_configuration_updates/$defs/relevance", list.MaxItems(1) & [..._#defs."/$defs/document_metadata_configuration_updates/$defs/relevance"]])
		search?: matchN(1, [_#defs."/$defs/document_metadata_configuration_updates/$defs/search", list.MaxItems(1) & [..._#defs."/$defs/document_metadata_configuration_updates/$defs/search"]])
		name!: string
		type!: string
	})

	#server_side_encryption_configuration: close({
		kms_key_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#user_group_resolution_configuration: close({
		user_group_resolution_mode!: string
	})

	#user_token_configurations: close({
		json_token_type_configuration?: matchN(1, [_#defs."/$defs/user_token_configurations/$defs/json_token_type_configuration", list.MaxItems(1) & [..._#defs."/$defs/user_token_configurations/$defs/json_token_type_configuration"]])
		jwt_token_type_configuration?: matchN(1, [_#defs."/$defs/user_token_configurations/$defs/jwt_token_type_configuration", list.MaxItems(1) & [..._#defs."/$defs/user_token_configurations/$defs/jwt_token_type_configuration"]])
	})

	_#defs: "/$defs/document_metadata_configuration_updates/$defs/relevance": close({
		duration?:   string
		freshness?:  bool
		importance?: number
		rank_order?: string
		values_importance_map?: [string]: number
	})

	_#defs: "/$defs/document_metadata_configuration_updates/$defs/search": close({
		displayable?: bool
		facetable?:   bool
		searchable?:  bool
		sortable?:    bool
	})

	_#defs: "/$defs/user_token_configurations/$defs/json_token_type_configuration": close({
		group_attribute_field!:     string
		user_name_attribute_field!: string
	})

	_#defs: "/$defs/user_token_configurations/$defs/jwt_token_type_configuration": close({
		claim_regex?:               string
		group_attribute_field?:     string
		issuer?:                    string
		key_location!:              string
		secrets_manager_arn?:       string
		url?:                       string
		user_name_attribute_field?: string
	})
}
