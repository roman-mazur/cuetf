package data

#aws_quicksight_data_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_data_set")
	close({
		arn?:            string
		aws_account_id?: string
		column_groups?: [...close({
			geo_spatial_column_group?: [...close({
				columns?: [...string]
				country_code?: string
				name?:         string
			})]
		})]
		column_level_permission_rules?: [...close({
			column_names?: [...string]
			principals?: [...string]
		})]
		data_set_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		data_set_usage_configuration?: [...close({
			disable_use_as_direct_query_source?: bool
			disable_use_as_imported_source?:     bool
		})]
		field_folders?: [...close({
			columns?: [...string]
			description?:      string
			field_folders_id?: string
		})]
		id?:          string
		import_mode?: string
		logical_table_map?: [...close({
			alias?: string
			data_transforms?: [...close({
				cast_column_type_operation?: [...close({
					column_name?:     string
					format?:          string
					new_column_type?: string
				})]
				create_columns_operation?: [...close({
					columns?: [...close({
						column_id?:   string
						column_name?: string
						expression?:  string
					})]
				})]
				filter_operation?: [...close({
					condition_expression?: string
				})]
				project_operation?: [...close({
					projected_columns?: [...string]
				})]
				rename_column_operation?: [...close({
					column_name?:     string
					new_column_name?: string
				})]
				tag_column_operation?: [...close({
					column_name?: string
					tags?: [...close({
						column_description?: [...close({
							text?: string
						})]
						column_geographic_role?: string
					})]
				})]
				untag_column_operation?: [...close({
					column_name?: string
					tag_names?: [...string]
				})]
			})]
			logical_table_map_id?: string
			source?: [...close({
				data_set_arn?: string
				join_instruction?: [...close({
					left_join_key_properties?: [...close({
						unique_key?: bool
					})]
					left_operand?: string
					on_clause?:    string
					right_join_key_properties?: [...close({
						unique_key?: bool
					})]
					right_operand?: string
					type?:          string
				})]
				physical_table_id?: string
			})]
		})]
		name?: string
		permissions?: [...close({
			actions?: [...string]
			principal?: string
		})]
		physical_table_map?: [...close({
			custom_sql?: [...close({
				columns?: [...close({
					name?: string
					type?: string
				})]
				data_source_arn?: string
				name?:            string
				sql_query?:       string
			})]
			physical_table_map_id?: string
			relational_table?: [...close({
				catalog?:         string
				data_source_arn?: string
				input_columns?: [...close({
					name?: string
					type?: string
				})]
				name?:   string
				schema?: string
			})]
			s3_source?: [...close({
				data_source_arn?: string
				input_columns?: [...close({
					name?: string
					type?: string
				})]
				upload_settings?: [...close({
					contains_header?: bool
					delimiter?:       string
					format?:          string
					start_from_row?:  number
					text_qualifier?:  string
				})]
			})]
		})]
		row_level_permission_data_set?: [...close({
			arn?:               string
			format_version?:    string
			namespace?:         string
			permission_policy?: string
			status?:            string
		})]
		row_level_permission_tag_configuration?: [...close({
			status?: string
			tag_rules?: [...close({
				column_name?:               string
				match_all_value?:           string
				tag_key?:                   string
				tag_multi_value_delimiter?: string
			})]
		})]
		tags?: [string]: string
	})
}
