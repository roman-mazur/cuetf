package res

import "list"

#cloudflare_spectrum_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_spectrum_application")
	argo_smart_routing?: bool
	id?:                 string
	ip_firewall?:        bool
	origin_direct?: [...string]
	origin_port?:    number
	protocol!:       string
	proxy_protocol?: string
	tls?:            string
	traffic_type?:   string
	zone_id!:        string
	dns?: #dns | list.MaxItems(1) & [_, ...] & [...#dns]
	edge_ips?: #edge_ips | list.MaxItems(1) & [...#edge_ips]
	origin_dns?: #origin_dns | list.MaxItems(1) & [...#origin_dns]
	origin_port_range?: #origin_port_range | list.MaxItems(1) & [...#origin_port_range]

	#dns: {
		name!: string
		type!: string
	}

	#edge_ips: {
		connectivity?: string
		ips?: [...string]
		type!: string
	}

	#origin_dns: name!: string

	#origin_port_range: {
		end!:   number
		start!: number
	}
}
