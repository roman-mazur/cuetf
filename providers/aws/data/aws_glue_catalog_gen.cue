package data

aws_glue_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_glue_catalog")
	close({
		allow_full_table_external_data_access?: string
		arn?:                                   string
		catalog_id?:                            string
		catalog_properties?: [...close({
			custom_properties?: [string]: string
			data_lake_access_properties?: [...close({
				catalog_type?:             string
				data_lake_access?:         bool
				data_transfer_role?:       string
				kms_key?:                  string
				managed_workgroup_name?:   string
				managed_workgroup_status?: string
				redshift_database_name?:   string
				status_message?:           string
			})]
			iceberg_optimization_properties?: [...close({
				compaction?: [string]:           string
				orphan_file_deletion?: [string]: string
				retention?: [string]:            string
				role_arn?: string
			})]
		})]
		create_database_default_permissions?: [...close({
			permissions?: [...string]
			principal?: [...close({
				data_lake_principal_identifier?: string
			})]
		})]
		create_table_default_permissions?: [...close({
			permissions?: [...string]
			principal?: [...close({
				data_lake_principal_identifier?: string
			})]
		})]
		create_time?: string
		description?: string
		federated_catalog?: [...close({
			connection_name?: string
			connection_type?: string
			identifier?:      string
		})]
		name!: string
		parameters?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		target_redshift_catalog?: [...close({
			catalog_arn?: string
		})]
		update_time?: string
	})
}
