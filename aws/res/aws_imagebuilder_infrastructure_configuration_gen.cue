package res

import "list"

#aws_imagebuilder_infrastructure_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_imagebuilder_infrastructure_configuration")
	arn?:                   string
	date_created?:          string
	date_updated?:          string
	description?:           string
	id?:                    string
	instance_profile_name!: string
	instance_types?: [...string]
	key_pair?: string
	name!:     string
	resource_tags?: [string]: string
	security_group_ids?: [...string]
	sns_topic_arn?: string
	subnet_id?:     string
	tags?: [string]: string
	tags_all?: [string]: string
	terminate_instance_on_failure?: bool
	instance_metadata_options?: #instance_metadata_options | list.MaxItems(1) & [...#instance_metadata_options]
	logging?: #logging | list.MaxItems(1) & [...#logging]

	#instance_metadata_options: {
		http_put_response_hop_limit?: number
		http_tokens?:                 string
	}

	#logging: {
		s3_logs?: #logging.#s3_logs | list.MaxItems(1) & [_, ...] & [...#logging.#s3_logs]

		#s3_logs: {
			s3_bucket_name!: string
			s3_key_prefix?:  string
		}
	}
}
