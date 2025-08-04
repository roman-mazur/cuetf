package res

import "list"

#aws_imagebuilder_infrastructure_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_infrastructure_configuration")
	close({
		arn?: string
		instance_metadata_options?: matchN(1, [#instance_metadata_options, list.MaxItems(1) & [...#instance_metadata_options]])
		date_created?:          string
		date_updated?:          string
		description?:           string
		id?:                    string
		instance_profile_name!: string
		instance_types?: [...string]
		key_pair?: string
		name!:     string
		region?:   string
		logging?: matchN(1, [#logging, list.MaxItems(1) & [...#logging]])
		resource_tags?: [string]: string
		security_group_ids?: [...string]
		sns_topic_arn?: string
		subnet_id?:     string
		placement?: matchN(1, [#placement, list.MaxItems(1) & [...#placement]])
		tags?: [string]:     string
		tags_all?: [string]: string
		terminate_instance_on_failure?: bool
	})

	#instance_metadata_options: close({
		http_put_response_hop_limit?: number
		http_tokens?:                 string
	})

	#logging: close({
		s3_logs?: matchN(1, [_#defs."/$defs/logging/$defs/s3_logs", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/logging/$defs/s3_logs"]])
	})

	#placement: close({
		availability_zone?:       string
		host_id?:                 string
		host_resource_group_arn?: string
		tenancy?:                 string
	})

	_#defs: "/$defs/logging/$defs/s3_logs": close({
		s3_bucket_name!: string
		s3_key_prefix?:  string
	})
}
