package data

#aws_s3_bucket_replication_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_bucket_replication_configuration")
	close({
		bucket!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		role?:   string
		rule?: [...close({
			delete_marker_replication?: [...close({
				status?: string
			})]
			destination?: [...close({
				access_control_translation?: [...close({
					owner?: string
				})]
				account?: string
				bucket?:  string
				encryption_configuration?: [...close({
					replica_kms_key_id?: string
				})]
				metrics?: [...close({
					event_threshold?: [...close({
						minutes?: number
					})]
					status?: string
				})]
				replication_time?: [...close({
					status?: string
					time?: [...close({
						minutes?: number
					})]
				})]
				storage_class?: string
			})]
			existing_object_replication?: [...close({
				status?: string
			})]
			filter?: [...close({
				and?: [...close({
					prefix?: string
					tag?: [...close({
						key?:   string
						value?: string
					})]
				})]
				prefix?: string
				tag?: [...close({
					key?:   string
					value?: string
				})]
			})]
			id?:       string
			prefix?:   string
			priority?: number
			source_selection_criteria?: [...close({
				replica_modifications?: [...close({
					status?: string
				})]
				sse_kms_encrypted_objects?: [...close({
					status?: string
				})]
			})]
			status?: string
		})]
	})
}
