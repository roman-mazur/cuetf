package res

import "list"

#aws_networkmanager_connect_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_connect_peer")
	close({
		arn?: string
		configuration?: [...close({
			bgp_configurations?: [...close({
				core_network_address?: string
				core_network_asn?:     number
				peer_address?:         string
				peer_asn?:             number
			})]
			core_network_address?: string
			inside_cidr_blocks?: [...string]
			peer_address?: string
			protocol?:     string
		})]
		connect_attachment_id!: string
		connect_peer_id?:       string
		core_network_address?:  string
		core_network_id?:       string
		created_at?:            string
		edge_location?:         string
		bgp_options?: matchN(1, [#bgp_options, list.MaxItems(1) & [...#bgp_options]])
		id?: string
		inside_cidr_blocks?: [...string]
		peer_address!: string
		timeouts?:     #timeouts
		state?:        string
		subnet_arn?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#bgp_options: close({
		peer_asn?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
