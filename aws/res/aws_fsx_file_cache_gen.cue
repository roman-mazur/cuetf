package res

import "list"

#aws_fsx_file_cache: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_fsx_file_cache")
	arn?:                                       string
	copy_tags_to_data_repository_associations?: bool
	data_repository_association_ids?: [...string]
	dns_name?:                string
	file_cache_id?:           string
	file_cache_type!:         string
	file_cache_type_version!: string
	id?:                      string
	kms_key_id?:              string
	network_interface_ids?: [...string]
	owner_id?: string
	security_group_ids?: [...string]
	storage_capacity!: number
	subnet_ids!: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_id?: string
	data_repository_association?: #data_repository_association | list.MaxItems(8) & [...#data_repository_association]
	lustre_configuration?: #lustre_configuration | [...#lustre_configuration]
	timeouts?: #timeouts

	#data_repository_association: {
		association_id?:       string
		data_repository_path!: string
		data_repository_subdirectories?: [...string]
		file_cache_id?:            string
		file_cache_path!:          string
		file_system_id?:           string
		file_system_path?:         string
		imported_file_chunk_size?: number
		resource_arn?:             string
		tags?: [string]: string
		nfs?: #data_repository_association.#nfs | [...#data_repository_association.#nfs]

		#nfs: {
			dns_ips?: [...string]
			version!: string
		}
	}

	#lustre_configuration: {
		deployment_type!: string
		log_configuration?: [...{
			destination?: string
			level?:       string
		}]
		mount_name?:                    string
		per_unit_storage_throughput!:   number
		weekly_maintenance_start_time?: string
		metadata_configuration?: #lustre_configuration.#metadata_configuration | list.MaxItems(8) & [_, ...] & [...#lustre_configuration.#metadata_configuration]

		#metadata_configuration: storage_capacity!: number
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
