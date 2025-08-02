package data

#aws_kendra_index: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_index")
	close({
		arn?: string
		capacity_units?: [...close({
			query_capacity_units?:   number
			storage_capacity_units?: number
		})]
		created_at?:  string
		description?: string
		document_metadata_configuration_updates?: [...close({
			name?: string
			relevance?: [...close({
				duration?:   string
				freshness?:  bool
				importance?: number
				rank_order?: string
				values_importance_map?: [string]: number
			})]
			search?: [...close({
				displayable?: bool
				facetable?:   bool
				searchable?:  bool
				sortable?:    bool
			})]
			type?: string
		})]
		edition?:       string
		error_message?: string
		id!:            string
		index_statistics?: [...close({
			faq_statistics?: [...close({
				indexed_question_answers_count?: number
			})]
			text_document_statistics?: [...close({
				indexed_text_bytes?:           number
				indexed_text_documents_count?: number
			})]
		})]
		name?:     string
		region?:   string
		role_arn?: string
		server_side_encryption_configuration?: [...close({
			kms_key_id?: string
		})]
		status?: string
		tags?: [string]: string
		updated_at?:          string
		user_context_policy?: string
		user_group_resolution_configuration?: [...close({
			user_group_resolution_mode?: string
		})]
		user_token_configurations?: [...close({
			json_token_type_configuration?: [...close({
				group_attribute_field?:     string
				user_name_attribute_field?: string
			})]
			jwt_token_type_configuration?: [...close({
				claim_regex?:               string
				group_attribute_field?:     string
				issuer?:                    string
				key_location?:              string
				secrets_manager_arn?:       string
				url?:                       string
				user_name_attribute_field?: string
			})]
		})]
	})
}
