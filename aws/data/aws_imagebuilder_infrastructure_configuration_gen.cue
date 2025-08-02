package data

#aws_imagebuilder_infrastructure_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_infrastructure_configuration")
	close({
		arn!:          string
		date_created?: string
		date_updated?: string
		description?:  string
		id?:           string
		instance_metadata_options?: [...close({
			http_put_response_hop_limit?: number
			http_tokens?:                 string
		})]
		instance_profile_name?: string
		instance_types?: [...string]
		key_pair?: string
		logging?: [...close({
			s3_logs?: [...close({
				s3_bucket_name?: string
				s3_key_prefix?:  string
			})]
		})]
		name?: string
		placement?: [...close({
			availability_zone?:       string
			host_id?:                 string
			host_resource_group_arn?: string
			tenancy?:                 string
		})]
		region?: string
		resource_tags?: [string]: string
		security_group_ids?: [...string]
		sns_topic_arn?: string
		subnet_id?:     string
		tags?: [string]: string
		terminate_instance_on_failure?: bool
	})
}
