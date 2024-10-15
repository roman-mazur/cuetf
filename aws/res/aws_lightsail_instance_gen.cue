package res

import "list"

#aws_lightsail_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_instance")
	arn?:               string
	availability_zone!: string
	blueprint_id!:      string
	bundle_id!:         string
	cpu_count?:         number
	created_at?:        string
	id?:                string
	ip_address_type?:   string
	ipv6_addresses?: [...string]
	is_static_ip?:       bool
	key_pair_name?:      string
	name!:               string
	private_ip_address?: string
	public_ip_address?:  string
	ram_size?:           number
	tags?: [string]:     string
	tags_all?: [string]: string
	user_data?: string
	username?:  string
	add_on?: #add_on | list.MaxItems(1) & [...#add_on]

	#add_on: {
		snapshot_time!: string
		status!:        string
		type!:          string
	}
}
