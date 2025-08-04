package res

import "list"

#aws_dax_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dax_cluster")
	close({
		arn?: string
		availability_zones?: [...string]
		cluster_address?:                  string
		cluster_endpoint_encryption_type?: string
		cluster_name!:                     string
		configuration_endpoint?:           string
		description?:                      string
		iam_role_arn!:                     string
		id?:                               string
		maintenance_window?:               string
		node_type!:                        string
		server_side_encryption?: matchN(1, [#server_side_encryption, list.MaxItems(1) & [...#server_side_encryption]])
		nodes?: [...close({
			address?:           string
			availability_zone?: string
			id?:                string
			port?:              number
		})]
		notification_topic_arn?: string
		timeouts?:               #timeouts
		parameter_group_name?:   string
		port?:                   number
		region?:                 string
		replication_factor!:     number
		security_group_ids?: [...string]
		subnet_group_name?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#server_side_encryption: close({
		enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
