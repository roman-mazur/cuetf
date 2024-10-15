package res

#aws_finspace_kx_volume: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_volume")
	arn?: string
	attached_clusters?: [...{
		cluster_name?:   string
		cluster_status?: string
		cluster_type?:   string
	}]
	availability_zones!: [...string]
	az_mode!:                 string
	created_timestamp?:       string
	description?:             string
	environment_id!:          string
	id?:                      string
	last_modified_timestamp?: string
	name!:                    string
	status?:                  string
	status_reason?:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!: string
	nas1_configuration?: #nas1_configuration | [...#nas1_configuration]
	timeouts?: #timeouts

	#nas1_configuration: {
		size!: number
		type!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
