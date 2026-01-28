package res

import "list"

#aws_fsx_file_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fsx_file_cache")
	close({
		arn?:                                       string
		copy_tags_to_data_repository_associations?: bool
		data_repository_association_ids?: [...string]
		dns_name?:                string
		file_cache_id?:           string
		file_cache_type!:         string
		file_cache_type_version!: string
		id?:                      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		kms_key_id?: string
		data_repository_association?: matchN(1, [#data_repository_association, list.MaxItems(8) & [...#data_repository_association]])
		lustre_configuration?: matchN(1, [#lustre_configuration, [...#lustre_configuration]])
		network_interface_ids?: [...string]
		owner_id?: string
		security_group_ids?: [...string]
		storage_capacity!: number
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id?:   string
		timeouts?: #timeouts
	})

	#data_repository_association: close({
		association_id?:       string
		data_repository_path!: string
		data_repository_subdirectories?: [...string]
		file_cache_id?:    string
		file_cache_path!:  string
		file_system_id?:   string
		file_system_path?: string
		nfs?: matchN(1, [_#defs."/$defs/data_repository_association/$defs/nfs", [..._#defs."/$defs/data_repository_association/$defs/nfs"]])
		imported_file_chunk_size?: number
		resource_arn?:             string
		tags?: [string]: string
	})

	#lustre_configuration: close({
		metadata_configuration!: matchN(1, [_#defs."/$defs/lustre_configuration/$defs/metadata_configuration", list.MaxItems(8) & [_, ...] & [..._#defs."/$defs/lustre_configuration/$defs/metadata_configuration"]])
		deployment_type!: string
		log_configuration?: [...close({
			destination?: string
			level?:       string
		})]
		mount_name?:                    string
		per_unit_storage_throughput!:   number
		weekly_maintenance_start_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/data_repository_association/$defs/nfs": close({
		dns_ips?: [...string]
		version!: string
	})

	_#defs: "/$defs/lustre_configuration/$defs/metadata_configuration": close({
		storage_capacity!: number
	})
}
